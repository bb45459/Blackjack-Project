function [players,deck,newbets]=simpleStrategy(players,deck,dealer,player,bets)

% Performs the simple stratey for each hand

%% check to see if player should split
newbets=bets;
playerhit=false;
%players can only split once!


if players{player}{1}==players{player}{2}
    move = splitSimple(players{player}{1},dealer{1});
    if move==1
        [players,deck]=split(players,deck,player);
        newbets(2,player)=bets(1,player);
    end
end

%% check if player has an ace in either hand and play soft strategy if true

%this stops when the player has a "hard" hand where the value of the ace is
%fully determined
sizeofcellarray = size(players{player});
handnumber = sizeofcellarray(1);

doubleddown=zeros(1,2);

for k=1:handnumber
    % change hand
    stand=false;
    acepresent = false;
    i=0;
    
    while stand==false
        i=i+1;
        if players{player}{k,i}==1
            acepresent = true;
            move = softSimple(handtotal(players{player},k),dealer{1});
            switch move
                case 1 %hit
                    [players,deck]=hit(players,deck,player,k);
                    i=0;
                    playerhit=true;
                case 2 %double down
                    if playerhit==false
                        [players,deck]=doubledown(players,deck,player,k);
                        stand=true;
                        newbets(player)=newbets(player)+bets(k,player);
                        doubleddown(k)=1;
                    else
                        [players,deck]=hit(players,deck,player,k);
                        i=0;
                        playerhit=true;
                    end
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



%% play the hard hand strategy to either bust or stand

% dont do this if player doubled down before
for k=1:handnumber
    %change hand
    if doubleddown(k)==0
        stand=false;
        
        while stand==false
            move=hardSimple(handtotal(players{player},k),dealer{1});
            switch move
                case 1 % hit
                    [players,deck]=hit(players,deck,player,k);
                    playerhit = true;
                case 2 % doubledown
                    if playerhit==false
                        [players,deck]=doubledown(players,deck,player,k);
                        stand=true;
                        newbets(k,player)=newbets(k,player)+bets(k,player);
                        doubleddown(k)=1;
                    else
                        [players,deck]=hit(players,deck,player,k);
                        playerhit = true;
                    end
                case 0 % stand
                    stand = true;
                    
            end
        end
    end
end