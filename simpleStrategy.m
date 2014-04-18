function [players,deck,newbets]=simpleStrategy(players,deck,dealer,player,bets)

% Performs the simple stratey for each hand

%% check to see if player should split

%players can only split once!

% players{player}{1}=1;
% players{player}{2}=1;

if players{player}{1}==players{player}{2}
    move = splitSimple(players{player}{1},dealer{1});
    if move==1
        [players,deck]=split(players,deck,player);
    end
end

%% check if player has an ace in either hand and play soft strategy if true

%this stops when the player has a "hard" hand where the value of the ace is
%fully determined
sizeofcellarray = size(players{player});
handnumber = sizeofcellarray(1);
newbets=bets;

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
                case 2 %double down
                    [players,deck]=doubledown(players,deck,player,k);
                    stand=true;
                    newbets(player)=bets(player)*2;
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
if newbets(player)~= bets(player)
    for k=1:handnumber
        %change hand
        stand=false;
        
        while stand==false
            move=hardSimple(handtotal(players{player},k),dealer{1});
            switch move
                case 1 % hit
                    [players,deck]=hit(players,deck,player,k);
                case 2 % doubledown
                    [players,deck]=doubledown(players,deck,player,k);
                    stand=true;
                    newbets(player)=bets(player)*2;
                case 0 % stand
                    stand = true;
            end
        end
    end
end