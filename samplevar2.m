function [s2] = samplevar2(x)
if length(x) > 1;
    y = zeros(1,length(x));
    u = sum(x.^2);
    v = sum(x);
    s2 = (u - v^2/length(x))/(length(x)-1);
else
    s2 = 0;
end
end
