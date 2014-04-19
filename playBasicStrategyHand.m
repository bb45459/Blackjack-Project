function [stakes]=playBasicStrategyHand(numplayers,numdecks,stakes,bets,standOnSoft17)

% Plays a hand of Basic strategy

%% players play

deck=createDeck(numdecks);
deck=shuffle(deck);
[players,dealer,deck]=deal(deck,numplayers);

for j=1:numplayers
    [players,deck,bets]=basicStrategy(players,deck,dealer,j,bets,numdecks,standOnSoft17);
end

%% dealer plays

[dealer,deck]=dealerplay(deck,dealer);


%% Determine winners and losers and edit stakes
for j=1:numplayers
    sizeofcellarray = size(players{j});
    handnumber = sizeofcellarray(1);
    
    for k=1:handnumber
        if handtotal(players{j},k)<=21
            if handtotal(dealer,1)<=21
                if handtotal(players{j},k)<handtotal(dealer,1)
                    stakes(j)=stakes(j)-bets(k,j);
                    disp(['Player ' num2str(j)  ' hand ' num2str(k) ' loses ' num2str(bets(k,j))])
                elseif handtotal(players{j},k)==handtotal(dealer,1)
                    disp(['Player ' num2str(j)  ' hand ' num2str(k) ' pushes'])
                elseif handtotal(players{j},k)>handtotal(dealer,1)
                    stakes(j)=stakes(j)+bets(k,j);
                    disp(['Player ' num2str(j)  ' hand ' num2str(k) ' wins ' num2str(bets(k,j))])
                end
            else
                stakes(j)=stakes(j)+bets(k,j);
                disp(['Player ' num2str(j) ' hand ' num2str(k) ' wins ' num2str(bets(k,j))])
            end
        else
            stakes(j)=stakes(j)-bets(k,j);
            disp(['Player ' num2str(j)  ' hand ' num2str(k) ' loses ' num2str(bets(k,j))])
        end
    end
end