#https://juliaobserver.com/packages
#https://zhuanlan.zhihu.com/p/41802723

exit()

1 + 2
1 + 2; #Do not show the result
ans


#?? julia script.jl arg1 arg2

? #help
] #pkg

using Pkg
Pkg.add("Example")

println("Hello World") # "" for string
println('c')           # '' for char

name = "Roger"
println("Hello $name") # $+

1 in [1, 2, 3]

function mysum(A)
    s = 0.0 # s = zero(eltype(A))
    for a in A
        s += a
    end
    s # auto return last line
end

is_even(x::Int) = x % 2 == 0
# :: define type

a = 1
if a == 1
 1
elseif a == 2
 2
else
 3
end

rand(3)
rand(3, 5)
rand(3, 5, 7)
rand(Int, 3, 5)
zeros(3, 5)
zeros(Int, 3, 5)

[i for i in 1:10]
[(i, j) for i in 1:5, j in 1:6]

info = (name="Roger", age="0")
info.name










