function dy = doblependulo(t, y)
%--------parametros------------
m1 = 0.2;
l1 = 0.3;
m2 = 0.1;
l2 = 0.25;
g = 9.81;
c1 = 0;

%---------defino las matrices------------------------------
P = [(m1+m2)*l1, m2*l2*cos(y(2)-y(1)); l1*cos(y(2)-y(1)), l2];
N = [c1, - m2*l2*y(4)*sin(y(2)-y(1)); l1*y(3)*sin(y(2)-y(1)), 0];
T = [(m1+m2)*g*sin(y(1)); g*sin(y(2))];

x = 4;
dy = zeros(x,1);

dy(1) = y(3);
dy(2) = y(4);
dy(3:4) = P\(-N*[y(3);y(4)]-T);
end
