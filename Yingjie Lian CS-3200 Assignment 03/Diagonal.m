%README: This program is going to constuct the matrix of A for problem 4.
function D = Diagonal(a,n)

d = -2*ones(n,1);


mid = ((n-1)/2) + 1;
    D = diag(d);
    D(mid,mid) = -(1+a);
    for j = 1:(mid-1)
        D(mid+j,mid+j) = -2*a;
    end

    for i = 1:(mid-1)
        D(1+i,i) = 1;
        D(i,1+i) = 1;
        D(mid-1+i, mid+i) = a;
        D(mid+i,mid-1+i) = a;
    end


