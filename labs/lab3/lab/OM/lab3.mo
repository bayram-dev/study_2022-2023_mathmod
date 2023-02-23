model lab3 "Battle beetwen forces"
parameter Integer x0 = 12000;
parameter Integer y0 = 15000;
parameter Real a = 0.34;
parameter Real b = 0.75;
parameter Real c = 0.65;
parameter Real h = 0.45;
Real P;
Real Q;
Real x(start=x0);
Real y(start=y0);
equation
P = cos(3*time);
Q = sin(4*time);
der(x) = - a * x - b * y + P;
der(y) = - c * x - h * y + Q;
end lab3;