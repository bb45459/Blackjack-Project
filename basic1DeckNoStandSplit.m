function move = basic1DeckNoStandSplit(player,dealer)

% Basic Strategy - 1 deck - dealer does NOT stand on soft 17
% Dealer (across), Player (down)
% 0 = Stand   1 = Split   X = Not Possible
% 2 = hit    3 = doubledown
% treating Ace as 1

S=0; P=1; H=2; D=3;

splitS = [...
    %1 2 3 4 5 6 7 8 9 T A
     P P P P P P P P P P P  %1 
     H P P P P P P H H H H  %2   
     H P P P P P P P H H H  %3
     H H H P P P H H H H H  %4
     H D D D D D D D D H H  %5
     H P P P P P P H H H H  %6
     H P P P P P P P H S H  %7
     P P P P P P P P P P P  %8
     P P P P P P S P P S P  %9
     S S S S S S S S S S S  %10
     P P P P P P P P P P P];%A
        
move = splitS(player,dealer);