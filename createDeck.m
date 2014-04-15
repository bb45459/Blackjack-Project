function deck=createDeck(num)

deck(1).numberofdecks=num;

for j=0:num-1 
    % Each iteration creates a deck
    
    for i=0:3
        % Each iteration creats a suit
        
        switch i
            case 0
                suit='hearts';
            case 1
                suit='diamonds';
            case 2
                suit='spades';
            case 3
                suit='clubs';
        end
        
        for k=1:13
            % Each iteration creates a card
            if k==1
                deck(k+(i*13)+(j*52)).title=['aceof',suit];
                deck(k+(i*13)+(j*52)).value=k;
            elseif k>=2 && k<=10
                deck(k+(i*13)+(j*52)).title=[num2str(k),'of',suit];
                deck(k+(i*13)+(j*52)).value=k;
            elseif k==11
                deck(k+(i*13)+(j*52)).title=['jackof',suit];
                deck(k+(i*13)+(j*52)).value=10;
            elseif k==12
                deck(k+(i*13)+(j*52)).title=['queenof',suit];
                deck(k+(i*13)+(j*52)).value=10;
            elseif k==13
                deck(k+(i*13)+(j*52)).title=['kingof',suit];
                deck(k+(i*13)+(j*52)).value=10;
            end
            
            deck(k+(i*13)+(j*52)).position=((k+(i*13))+(j*52));
            deck(k+(i*13)+(j*52)).location='deck';
            
        end
    end
end