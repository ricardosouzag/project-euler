mult3 = Set([n for n in 0:3:999])
mult5 = Set([n for n in 0:5:999])
println("The sum of all multiples of 3 or 5 under 100 is ", sum(union(mult3,mult5)))