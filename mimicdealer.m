function [newplayers,newdeck]=mimicdealer(deck,players,player)

k=3;
newdeck=deck;


for i=1:length(players{player})
    if ~isempty(players{player}{i})
        if players{player}{i}==1&&handtotal(players{player})>7
            players{player}{i}=11;
        end
    end
end

while handtotal(players{player})<17
    
    
    topCard=getDeckPos(newdeck);
    players{player}{k}=newdeck(topCard).value;
    disp(['Player ' num2str(player) ' got ' newdeck(topCard).title])
    newdeck(topCard).location=['Player ' num2str(player) ' hand'];
    k=k+1;
    
    for i=1:length(players{player})
        if ~isempty(players{player}{i})
            if players{player}{i}==1&&handtotal(players{player})>=7&&handtotal(players{player})<=11
                players{player}{i}=11;
            end
        end
    end
    
end

if handtotal(players{player})>21
    disp(['Player ' num2str(player) ' busted!']);
end


newplayers=players;