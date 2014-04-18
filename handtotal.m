function sum=handtotal(playerhand,handnumber)
% playerhand is a cell array
sum=0;

for k=1:length(playerhand)
    if ~isempty(playerhand{handnumber,k})
        sum=sum+playerhand{handnumber,k};
    end
end
