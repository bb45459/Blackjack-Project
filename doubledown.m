function [newplayers, newdeck] = doubledown(players,deck,player,handnumber)

% function for a double down
% only one card is given to the specified player after he doubles his bet
% doubling down is only allowed when the player has 2 cards, so the first
% possible hit a hand can take

newplayers = players;
newdeck = deck;


disp(['Player ' num2str(player) ' doubled down'])


topCard=getDeckPos(newdeck);
newplayers{player}{handnumber, 3}=newdeck(topCard).value;
disp(['Player ' num2str(player) ' got ' newdeck(topCard).title])
newdeck(topCard).location=['Player ' num2str(player) ' hand'];