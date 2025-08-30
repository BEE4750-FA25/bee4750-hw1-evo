function multiple_return_values(x, y)
    # Material balance equation
    # M1 = 0.2.*x
    # M2 = 0.005.*y.^2
    # M = 100 .- M1 .- M2 

    # Finance cost
    # C1 = x.^2/20
    # C2 = 1.5.*y
    # C = C1 + C2
    return (100 .- 0.2.*x .- 0.005.*y.^2, x.^2/20 .+ 1.5.*y)
end

x = [10, 20, 30, 40, 50]
y = [10, 20, 30, 40, 50]

output = multiple_return_values.(x, y)
a = [out[1] for out in output]
b = [out[2] for out in output]
@show a;
@show b;