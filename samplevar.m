function [s2] = samplevar(x)
y = zeros(1,length(x));
average = sum(x)/length(x);
if length(x) > 1
    for k=1:length(x)
        y(k) = (x(k) - average)^2;
    end
    s2 = sum(y)/(length(y)-1);
else
    s2 = 0;
end
    

end
