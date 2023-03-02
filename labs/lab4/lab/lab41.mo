model lab41
Real x;
Real y;
Real w = 4.3;
Real g = 0.0;
Real t = time;
initial equation
x = 0.8;
y = -1.2;
equation
der(x) = y;
der(y) = -w*x - g*y;
end lab41;