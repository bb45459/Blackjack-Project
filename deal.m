function [players,dealer,newdeck]=deal(deck,numberofplayers)
% Deal the cards from the shuffled cards cell array to player hands and the
% dealer hand

%% Create the player hands and dealer hand matrices

dealer = cell(1,10);
players=cell(1,numberofplayers);
newdeck=deck;

switch numberofplayers %makes player hands based on number of players
    case 1
        player1=cell(1,10);
        players{1}=player1;
    case 2
        player1=cell(1,10);
        player2=cell(1,10);
        players{1}=player1;
        players{2}=player2;
    case 3
        player1=cell(1,10);
        player2=cell(1,10);
        player3=cell(1,10);
        players{1}=player1;
        players{2}=player2;
        players{3}=player3;
        
    case 4
        player1=cell(1,10);
        player2=cell(1,10);
        player3=cell(1,10);
        player4=cell(1,10);
        players{1}=player1;
        players{2}=player2;
        players{3}=player3;
        players{4}=player4;
    case 5
        player1=cell(1,10);
        player2=cell(1,10);
        player3=cell(1,10);
        player4=cell(1,10);
        player5=cell(1,10);
        players{1}=player1;
        players{2}=player2;
        players{3}=player3;
        players{4}=player4;
        players{5}=player5;
end


%% Make the initial deal to the players and dealer

%initialize counter variables
player=1;
card=1;
k=1;

while card<=2
    
    while player<=numberofplayers
        players{player}{card}=deck(k).value; %players(player1, card 1)
        newdeck(k).location=['Player ' num2str(player) ' hand'];
        k=k+1;
        player=player+1;
    end
    
    dealer{card}=deck(k).value;
    newdeck(k).location ='Dealer Hand';
    k=k+1;
    card=card+1;
    player=1;
end
