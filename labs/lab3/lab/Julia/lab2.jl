using Plots
using DifferentialEquations

x₀ = 12000
y₀ = 15000

a = 0.24
b = 0.64
c = 0.31
h = 0.38

P(t) = abs(cos(2*t))
Q(t) = abs(sin(t))

u₀ = [x₀, y₀]
p = (a, b, c, h)
T = [0, 2]

function F(du, u, p, t)
    a, b, c, h = p
    du[1] = -a * u[1] - b * u[2] + P(t) 
    du[2] = -c * u[1] * u[2] - b * u[2] + Q(t)
end

prob = ODEProblem(F, u₀, T, p)

sol = solve(prob)

plt = plot!(
	   sol,
	    vars=(0,1),
	    color=:red,
	    label="X army",
	    title="Модель боевых действий",
	    ylabel="численность войск"
	   )
plot!(
      sol,
      vars=(0,2),
      color=:blue,
     label="Y army",
     xlabel="Время")

savefig(plt, "lab3_2.png")
