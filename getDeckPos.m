function position=getDeckPos(deck)

k=0;
found=false;
error=false;

while ~found
    
    k=k+1;
    if strcmp(deck(k).location,'deck')
        found=true;
    end
    if k==length(deck)
        found=true;
        error=true;
    end
    
end


if error
    display('You dun goofed')
else
    position=k;
end
