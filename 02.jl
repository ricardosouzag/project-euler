function fib(n, m, steps)
    if steps ≤ 0
        return n
    end
    return fib(n + m, n, steps - 1)
end

function fib(m)
    return fib(1, 0, m)
end

function getevenfibs(acc, steps)
    if fib(steps) >= 4000000
        return acc
    end
    return getevenfibs(acc+fib(steps), steps+3)
end

function getevenfibs()
    return getevenfibs(0,2)
end

println("The sum of the even Fibonnaci numbers which don't exceed 4 million is ", getevenfibs())