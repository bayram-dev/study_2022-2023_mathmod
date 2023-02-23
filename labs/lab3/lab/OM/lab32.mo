model lab32 "Battle beetwen forces"
parameter Integer x0 = 12000;
parameter Integer y0 = 15000;
parameter Real a = 0.24;
parameter Real b = 0.64;
parameter Real c = 0.31;
parameter Real h = 0.38;
Real P;
Real Q;
Real x(start=x0);
Real y(start=y0);
equation
P = abs(cos(2*time));
Q = abs(sin(time));
der(x) = - a * x - b * y + P;
der(y) = - c * x * y - h * y + Q;
end lab32;