function [stakes]=playSimpleStrategyHand(numplayers,numdecks,stakes,bets)

% plays a hand of blackjack using the simple strategy for player strategies

%% players play

deck=createDeck(numdecks);
deck=shuffle(deck);
[players,dealer,deck]=deal(deck,numplayers);

for j=1:numplayers
    [players,deck,bets]=simpleStrategy(players,deck,dealer,j,bets);
end

%% dealer plays

[dealer,deck]=dealerplay(deck,dealer);

%% determine winners and losers and edit stake values

for j=1:numplayers
    sizeofcellarray = size(players{j});
    handnumber = sizeofcellarray(1);
    
    for k=1:handnumber
        if handtotal(players{j},k)<=21
            if handtotal(dealer,1)<=21
                if handtotal(players{j},k)<handtotal(dealer,1)
                    stakes(j)=stakes(j)-bets(j);
                    disp(['Player ' num2str(j)  ' hand ' num2str(k) ' loses ' num2str(bets(j))])
                elseif handtotal(players{j},k)==handtotal(dealer,1)
                    disp(['Player ' num2str(j)  ' hand ' num2str(k) ' pushes'])
                elseif handtotal(players{j},k)>handtotal(dealer,1)
                    stakes(j)=stakes(j)+bets(j);
                    disp(['Player ' num2str(j)  ' hand ' num2str(k) ' wins ' num2str(bets(j))])
                end
            else
                stakes(j)=stakes(j)+bets(j);
                disp(['Player ' num2str(j) ' hand ' num2str(k) ' wins ' num2str(bets(j))])
            end
        else
            stakes(j)=stakes(j)-bets(j);
            disp(['Player ' num2str(j)  ' hand ' num2str(k) ' loses ' num2str(bets(j))])
        end
    end
end