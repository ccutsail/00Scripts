for i = 1:3;
    clear
    k = 0;
    n = 1e7;
    x = -1 + rand(n,1)*2;
    y = -1 + rand(n,1)*2;
    for j = 1:n;
        if(x(j)^2 + y(j)^2) <= 1
            k = k + 1;
        end
    end
    4*k/n-pi
end