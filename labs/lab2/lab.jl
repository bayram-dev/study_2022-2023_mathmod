using Plots
using DifferentialEquations

function F(du,u,p,t)
	r, θ = u
	du[1] = 2
	du[2] = sqrt(19.25) / u[1]
end

r₀ = 18.1/5.5
h = 0.1
θ₀ = 0.0
tspan = (0, 100)
prob = ODEProblem(F, [r₀, θ₀], tspan)
sol = solve(prob, dtmax=h)

#Достаем значения
R = [u[1] for u in sol.u]
Θ = [u[2] for u in sol.u]

boat_r = Float64[0.0, 100.0]
boat_θ = Float64[7π/4]

# Находим пересечение
intersection_r = 0
for (i,θ) in enumerate(Θ)
	if (round(θ, digits=2) == round(boat_θ[1], digits=2))
		global intersection_r = R[i]
		break
	end
end


plt = plot(
	   proj = :polar,
	   aspect_ratio=:equal,
	   dpi=300,
	   title="Задача о погоне",
	   legend=true)

plot!(
      plt,
      Θ,
      R,
      label="Траектория катера",
      color=:green)

plot!(
      plt,
      boat_θ,
      boat_r,
      label="Траектория лодки",
      color=:red)

plot!(
      plt,
      boat_θ,
      [intersection_r],
      seriestype = :scatter,
      label="Точка пересечения",
      color=:blue)

savefig(plt, "lab02_1.png")


r₀ = 18.1/3.5
θ₀ = π

prob = ODEProblem(F, [r₀, θ₀], tspan)
sol = solve(prob, dtmax=h)

#Достаем значения
R = [u[1] for u in sol.u]
Θ = [u[2] for u in sol.u]

boat_r = Float64[0.0, 100.0]

# Находим пересечение
for (i,θ) in enumerate(Θ)
	if (round(θ, digits=2) == round(boat_θ[1], digits=2))
		global intersection_r = R[i]
		break
	end
end

plt2 = plot(
	    proj = :polar,
	    aspect_ratio=:equal,
	    dpi=300,
	    title="Задача о погоне",
	    legend=true)


plot!(
      plt2,
      Θ,
      R,
      label="Траектория катера",
      color=:green)

plot!(
      plt2,
      boat_θ,
      boat_r,
      label="Траектория лодки",
      color=:red)

plot!(
      plt2,
      boat_θ,
      [intersection_r],
      seriestype = :scatter,
      label="Точка пересечения",
      color=:blue)

savefig(plt2, "lab02_2.png")
