function dydx = fd(x, y)
%FD
%  Finite difference across second dimension. Should be expanded
%  to handle arbitrary dimensions, like diff does.

[m,n] = size(y);

dx = diff(x, 1, 2);
dy = diff(y, 1, 2);

dx = repmat(([dx dx(end)] + [dx(1) dx])/2, m, 1);
dy = ([dy dy(:,end)] + [dy(:,1) dy])/2;

dydx = dy./dx;