function [newplayers, newdeck]=split(players,deck,player)
%split.m

% function for splitting cards
newdeck=deck;
newplayers=players;

newplayers{player}{2,1}= [];


newplayers{player}{2,1} = newplayers{player}{1,2};
newplayers{player}{1,2} = [];

newdeck(length(newplayers)+1+player).location=['Player ' num2str(player) ' hand 2'];

% hello GitHub