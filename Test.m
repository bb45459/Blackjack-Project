clear
clc

%% initial values

numplayers=3;
numdecks=1;
initialstake=100;
betvalue=5;
standOnSoft17=true;

%% create stakes
stakes=zeros(1,numplayers);
bets=zeros(2,numplayers);

for i=1:numplayers
        stakes(i)=initialstake;
        bets(1,i)=betvalue;
end

%% play the game till player 1 runs out of money

 numhandsplayed=0;
%
% while stakes(1)>0
%     stakes=playSimpleStrategyHand(numplayers,numdecks,stakes,bets);
%     disp(num2str(stakes(1)))
%     numhandsplayed=numhandsplayed+1;
% end
%
% disp([num2str(numhandsplayed) ' hands played'])

%  deck=createDeck(numdecks);
%  deck=shuffle(deck);
%  [players,dealer,deck]=deal(deck,numplayers);
% 
%  player=1;
%  players{player}{1}=1;
%  players{player}{2}=1;
% [players,deck,bets]=basicStrategy(players,deck,dealer,player,bets,numdecks,standOnSoft17);

while stakes(1)>0
    stakes = playBasicStrategyHand(numplayers,numdecks,stakes,bets,standOnSoft17);
    disp(num2str(stakes(1)))
    numhandsplayed=numhandsplayed+1;
end
 disp([num2str(numhandsplayed) ' hands played'])
