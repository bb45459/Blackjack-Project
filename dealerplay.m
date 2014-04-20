function [newdealer,newdeck]=dealerplay(deck,dealer,standOnSoft17)

k=3;
newdeck=deck;
newdealer=dealer;

%dealer stands on soft 17
if standOnSoft17==true
    for i=1:length(newdealer)
        if ~isempty(newdealer{i})
            if newdealer{i}==1&&handtotal(newdealer,1)>=7
                newdealer{i}=11;
            end
        end
    end
end

%dealer hits on soft 17
if standOnSoft17==false
    for i=1:length(newdealer)
        if ~isempty(newdealer{i})
            if newdealer{i}==1&&handtotal(newdealer,1)>7
                newdealer{i}=11;
            end
        end
    end
end

while handtotal(newdealer,1)<17
    
    
    topCard=getDeckPos(newdeck);
    newdealer{k}=newdeck(topCard).value;
    disp(['Dealer got ' newdeck(topCard).title])
    newdeck(topCard).location='Dealer hand';
    k=k+1;
    
    for i=1:length(newdealer)
        if ~isempty(newdealer{i})
            if newdealer{i}==1&&handtotal(newdealer,1)>=7&&handtotal(newdealer,1)<=11
                newdealer{i}=11;
            end
        end
    end
    
end

if handtotal(newdealer,1)>21
    disp('Dealer busted!');
end