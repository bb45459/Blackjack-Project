function newdeck=shuffle(olddeck)

%% Initialize Matrices

pick=zeros(1,52*olddeck(1).numberofdecks);
newdeck=createDeck(olddeck(1).numberofdecks);
newdeck(1).numberofdecks=olddeck(1).numberofdecks;

%% Shuffle Deck
k=1;
i=1;

while k<=52*olddeck(1).numberofdecks
    
    pick(k)=randi(52*olddeck(1).numberofdecks);
    
    while i<k
        % Check if position has already been picked
        if pick(k)==pick(i)
            pick(k)=randi(52*olddeck(1).numberofdecks);
            i=0;
        end
        i=i+1;
    end
    
    newdeck(pick(k)).title=olddeck(k).title;
    newdeck(pick(k)).value=olddeck(k).value;
    newdeck(pick(k)).position=olddeck(k).position;
    newdeck(pick(k)).location=olddeck(k).location;
    i=1;
    k=k+1;
    
end