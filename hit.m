function [newplayers,newdeck]=hit(players,deck,player,handnumber)

% function for a hit command which gives the desired hand one more card

newplayers = players;
newdeck = deck;



disp(['Player ' num2str(player) ' hit'])

i=1;
done = false;
while i<=length(players{player})&&done==false
    if isempty(players{player}{handnumber,i})
        
        topCard=getDeckPos(newdeck);
        newplayers{player}{handnumber,i}=newdeck(topCard).value;
        disp(['Player ' num2str(player) ' got ' newdeck(topCard).title])
        newdeck(topCard).location=['Player ' num2str(player) ' hand'];
        
        done = true;
    end
    i=i+1;
end