% Simple Strategy (Pair Hand)
% Dealer (across), Player (down)
% 0 = Don't Split   1 = Split   X = Not Possible

function move = splitSimple(player,dealer)
X = 99;
splitS = [...
    %1 2 3 4 5 6 7 8 9 T A
     1 1 1 1 1 1 1 1 1 1 1  %1 
     0 1 1 1 1 1 0 0 0 0 0  %2   
     0 1 1 1 1 1 0 0 0 0 0  %3
     0 0 0 0 0 0 0 0 0 0 0  %4
     0 0 0 0 0 0 0 0 0 0 0  %5
     0 1 1 1 1 1 0 0 0 0 0  %6
     0 1 1 1 1 1 0 0 0 0 0  %7
     1 1 1 1 1 1 1 1 1 1 1  %8
     0 1 1 1 1 1 0 0 0 0 0  %9
     0 0 0 0 0 0 0 0 0 0 0  %10
     1 1 1 1 1 1 1 1 1 1 1];%A
        
move = splitS(player,dealer);