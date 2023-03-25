model lab07_1
Real N = 1225;
Real n;
initial equation
n = 8;
equation
der(n) = (0.815 + 0.000033*n)*(N-n);
annotation(
    experiment(StartTime = 0, StopTime = 30, Tolerance = 1e-6, Interval = 0.05));
end lab07_1;