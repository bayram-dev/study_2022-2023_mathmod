model lab06_1
Real N = 4578;
Real I;
Real R;
Real S;
Real alpha = 0.5;
Real beta = 0.1;
initial equation
I = 78;
R = 28;
S = N - I - R;
equation
der(S) = 0;
der(I) = -beta*I;
der(R) = beta*I;
annotation(
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-6, Interval = 0.05));
end lab06_1;