function move = basic1DeckNoStandSoft(player,dealer)

% Basic Strategy - 1 deck - dealer does NOT stand on soft 17
% 0 = Stand   1 = Hit   2 = Double  X = Not Possible

X=99;

softS = [...
    %1 2 3 4 5 6 7 8 9 T A
     X X X X X X X X X X X  %1 
     1 1 1 1 1 1 1 1 1 1 1  %2   
     1 1 1 2 2 2 1 1 1 1 1  %3 (ace and 2)
     1 1 1 2 2 2 1 1 1 1 1  %4 (ace and 3)
     1 1 1 2 2 2 1 1 1 1 1  %5 (ace and 4)
     1 1 1 2 2 2 1 1 1 1 1  %6 (ace and 5)
     1 2 2 2 2 2 1 1 1 1 1  %7 (ace and 6)
     1 0 2 2 2 2 0 0 1 1 1  %8 (ace and 7)
     0 0 0 0 0 2 0 0 0 0 0  %9 (ace and 8)
     0 0 0 0 0 0 0 0 0 0 0  %10 (ace and 9)
     0 0 0 0 0 0 0 0 0 0 0  %11 (ace and 10)
     
     0 0 0 0 0 0 0 0 0 0 0  %12
     0 0 0 0 0 0 0 0 0 0 0  %13
     0 0 0 0 0 0 0 0 0 0 0  %14
     0 0 0 0 0 0 0 0 0 0 0  %15
     0 0 0 0 0 0 0 0 0 0 0  %16
     0 0 0 0 0 0 0 0 0 0 0  %17
     0 0 0 0 0 0 0 0 0 0 0  %18
     0 0 0 0 0 0 0 0 0 0 0  %19 
     0 0 0 0 0 0 0 0 0 0 0  %20
     0 0 0 0 0 0 0 0 0 0 0  %21
% all these are for if the player has busted so he doesn't keep drawing
% cards
     0 0 0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0 0 0];
 
 move = softS(player,dealer);