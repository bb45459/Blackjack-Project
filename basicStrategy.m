function [players,deck,newbets] = basicStrategy(players,deck,dealer,player,bets,numdecks,standOnSoft17)

% performs the basic strategy for moves for blackjack

doubleddown=0;
newbets=bets;
stand=false;
%% check to see if player should split

%players can only split once!



if players{player}{1}==players{player}{2}
    %choose the proper strategy to use
    if numdecks==1 && standOnSoft17==true
        move = basic1DeckStandSplit(players{player}{1},dealer{1});
        
    elseif numdecks==2 && standOnSoft17==true
        move = basic2DeckStandSplit(players{player}{1},dealer{1});
        
    elseif numdecks==4 && standOnSoft17==true
        move = basic4DeckStandSplit(players{player}{1},dealer{1});
        
    elseif numdecks==1 && standOnSoft17==false
        move = basic1DeckNoStandSplit(players{player}{1},dealer{1});
        
    elseif numdecks==2 && standOnSoft17==false
        move = basic2DeckNoStandSplit(players{player}{1},dealer{1});
        
    elseif numdecks==4 && standOnSoft17==false
        move = basic4DeckNoStandSplit(players{player}{1},dealer{1});
    end
    
    switch move
        case 1 %split
            [players,deck]=split(players,deck,player);
            newbets(2,player)=bets(1,player);
        case 2 %hit
            [players,deck]=hit(players,deck,player,1);
        case 3 %doubledown
            [players,deck]=doubledown(players,deck,player,1);
            newbets(player)=newbets(player)+bets(1,player);
            doubleddown=true;
        case 0 %stand
            stand=true;
    end
end

%% check if player has an ace in either hand and play soft strategy if true

%this stops when the player has a "hard" hand where the value of the ace is
%fully determined
sizeofcellarray = size(players{player});
handnumber = sizeofcellarray(1);


while stand==false
    for k=1:handnumber
        % change hand
        stand=false;
        acepresent = false;
        i=0;
        
        while stand==false
            i=i+1;
            if players{player}{k,i}==1
                acepresent = true;
                
                if numdecks==1 && standOnSoft17==true
                    move = basic1DeckStandSoft(handtotal(players{player},k),dealer{1});
                    
                elseif numdecks==2 && standOnSoft17==true
                    move = basic2DeckStandSoft(handtotal(players{player},k),dealer{1});
                    
                elseif numdecks==4 && standOnSoft17==true
                    move = basic4DeckStandSoft(handtotal(players{player},k),dealer{1});
                    
                elseif numdecks==1 && standOnSoft17==false
                    move = basic1DeckNoStandSoft(handtotal(players{player},k),dealer{1});
                    
                elseif numdecks==2 && standOnSoft17==false
                    move = basic2DeckNoStandSoft(handtotal(players{player},k),dealer{1});
                    
                elseif numdecks==4 && standOnSoft17==false
                    move = basic4DeckNoStandSoft(handtotal(players{player},k),dealer{1});
                end
                
                switch move
                    case 1 %hit
                        [players,deck]=hit(players,deck,player,k);
                        i=0;
                    case 2 %double down
                        [players,deck]=doubledown(players,deck,player,k);
                        stand=true;
                        newbets(player)=newbets(player)+bets(k,player);
                        % hand over when doubled down
                    case 0 %stand
                        stand=true;
                end
            end
            if i==10 % if there are no aces in hand move on
                stand = true;
                acepresent = false;
            end
        end
        % properly adjust the ace to be a 1 or 11
        if handtotal(players{player},k)<=11 && acepresent
            players{player}{k,i}=11;
        end
        
    end
end


%% play the hard hand strategy to either bust or stand

% dont do this if player doubled down before on all hands
if doubleddown==false
    for k=1:handnumber
        %change hand
        stand=false;
        
        while stand==false
            
            if numdecks==1 && standOnSoft17==true
                move = basic1DeckStandSoft(handtotal(players{player},k),dealer{1});
                
            elseif numdecks==2 && standOnSoft17==true
                move = basic2DeckStandSoft(handtotal(players{player},k),dealer{1});
                
            elseif numdecks==4 && standOnSoft17==true
                move = basic4DeckStandSoft(handtotal(players{player},k),dealer{1});
                
            elseif numdecks==1 && standOnSoft17==false
                move = basic1DeckNoStandSoft(handtotal(players{player},k),dealer{1});
                
            elseif numdecks==2 && standOnSoft17==false
                move = basic2DeckNoStandSoft(handtotal(players{player},k),dealer{1});
                
            elseif numdecks==4 && standOnSoft17==false
                move = basic4DeckNoStandSoft(handtotal(players{player},k),dealer{1});
            end
            
            switch move
                case 1 % hit
                    [players,deck]=hit(players,deck,player,k);
                case 2 % doubledown
                    [players,deck]=doubledown(players,deck,player,k);
                    stand=true;
                    newbets(player)=newbets(player)+bets(k,player);
                case 0 % stand
                    stand = true;
            end
        end
    end
end