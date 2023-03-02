model lab43
Real x;
Real y;
Real w = 9.0;
Real g = 10.0;
Real t = time;
initial equation
x = 0.8;
y = -1.2;
equation
der(x) = y;
der(y) = -w*x - g*y + 8*sin(7*t);
end lab43;