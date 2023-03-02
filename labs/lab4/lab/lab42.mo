model lab42
Real x;
Real y;
Real w = 5.0;
Real g = 6.0;
Real t = time;
initial equation
x = 0.8;
y = -1.2;
equation
der(x) = y;
der(y) = -w*x - g*y;
end lab42;