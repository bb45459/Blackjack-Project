function move = basic1DeckStandHard(player,dealer)

% 0 = stand 1 = Hit 2 = Double

hardS = [...
    %1 2 3 4 5 6 7 8 9 T A
     X X X X X X X X X X X  %1 
     X X X X X X X X X X X  %2   
     X X X X X X X X X X X  %3
     1 1 1 1 1 1 1 1 1 1 1  %4
     1 1 1 1 1 1 1 1 1 1 1  %5
     1 1 1 1 1 1 1 1 1 1 1  %6
     1 1 1 1 1 1 1 1 1 1 1  %7
     1 1 1 1 1 1 1 1 1 1 1  %8
     1 1 2 2 2 2 1 1 1 1 1  %9
     1 2 2 2 2 2 2 2 2 1 1  %10
     1 2 2 2 2 2 2 2 2 2 1  %11
     1 1 1 0 0 0 1 1 1 1 1  %12
     1 0 0 0 0 0 1 1 1 1 1  %13
     1 0 0 0 0 0 1 1 1 1 1  %14
     1 0 0 0 0 0 1 1 1 1 1  %15
     1 0 0 0 0 0 1 1 1 1 1  %16
     0 0 0 0 0 0 0 0 0 0 0  %17
     0 0 0 0 0 0 0 0 0 0 0  %18
     0 0 0 0 0 0 0 0 0 0 0  %19 
     0 0 0 0 0 0 0 0 0 0 0  %20
     0 0 0 0 0 0 0 0 0 0 0  %21
% to keep the player from drawing after he has busted
     0 0 0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0 0 0];   
move = hardS(player,dealer);