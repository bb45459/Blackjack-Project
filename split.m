function [newplayers, newdeck]=split(players,deck,player)
%split.m

% function for splitting cards

newdeck=deck;
newplayers=players;

%% create the second row for a second hand
newplayers{player}{2,1}= [];
newplayers{player}{2,2}= [];
newplayers{player}{2,3}= [];
newplayers{player}{2,4}= [];
newplayers{player}{2,5}= [];

%% split the cards
newplayers{player}{2,1} = newplayers{player}{1,2};
newplayers{player}{1,2} = [];

newdeck(length(newplayers)+1+player).location=['Player ' num2str(player) ' hand 2'];
disp(['Player ' num2str(player) ' split his hand'])

%% deal the second card for each split hand

for k=1:2
    topCard=getDeckPos(newdeck);
    newplayers{player}{k,2}=newdeck(topCard).value;
    disp(['Player ' num2str(player) ' got ' newdeck(topCard).title])
    newdeck(topCard).location=['Player ' num2str(player) ' hand ' num2str(k)];
end