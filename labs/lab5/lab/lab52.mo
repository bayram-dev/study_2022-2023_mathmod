model lab52
  Real a = 0.57;
  Real b = 0.047;
  Real c = 0.37;
  Real d = 0.027;
  Real x;
  Real y;
initial equation
  x = c/d;
  y = a/b;
equation
  der(x) = -a*x + b*x*y;
  der(y) = c*y - d*x*y;
  annotation(
    experiment(StartTime = 0, StopTime = 60, Tolerance = 1e-06, Interval = 0.05));
end lab52;