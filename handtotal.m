function sum=handtotal(playerhand);
% playerhand is a cell array
sum=0;

for k=1:length(playerhand)
    if ~isempty(playerhand{k})
        sum=sum+playerhand{k};
    end
end
