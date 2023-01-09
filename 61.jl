function triangle(n)
    return n * (n + 1) ÷ 2
end

function square(n)
    return n^2
end

function pentagon(n)
    return n * (3 * n - 1) ÷ 2
end

function hexagon(n)
    return n * (2 * n - 1)
end

function heptagon(n)
    return n * (5 * n - 3) ÷ 2
end

function octagon(n)
    return n * (3 * n - 2)
end

function fourdigittriangles(acc, step)
    digitcnt = length(string(triangle(step)))
    if digitcnt < 4
        return fourdigittriangles(acc, step + 1)
    elseif digitcnt > 4
        return acc
    end
    return fourdigittriangles(push!(acc, triangle(step)), step + 1)
end

function fourdigittriangles()
    return fourdigittriangles([], 0)
end

function fourdigitsquares(acc, step)
    digitcnt = length(string(square(step)))
    if digitcnt < 4
        return fourdigitsquares(acc, step + 1)
    elseif digitcnt > 4
        return acc
    end
    return fourdigitsquares(push!(acc, square(step)), step + 1)
end

function fourdigitsquares()
    return fourdigitsquares([], 0)
end

function fourdigitpentagons(acc, step)
    digitcnt = length(string(pentagon(step)))
    if digitcnt < 4
        return fourdigitpentagons(acc, step + 1)
    elseif digitcnt > 4
        return acc
    end
    return fourdigitpentagons(push!(acc, pentagon(step)), step + 1)
end

function fourdigitpentagons()
    return fourdigitpentagons([], 0)
end

function fourdigithexagons(acc, step)
    digitcnt = length(string(hexagon(step)))
    if digitcnt < 4
        return fourdigithexagons(acc, step + 1)
    elseif digitcnt > 4
        return acc
    end
    return fourdigithexagons(push!(acc, hexagon(step)), step + 1)
end

function fourdigithexagons()
    return fourdigithexagons([], 0)
end

function fourdigitheptagons(acc, step)
    digitcnt = length(string(heptagon(step)))
    if digitcnt < 4
        return fourdigitheptagons(acc, step + 1)
    elseif digitcnt > 4
        return acc
    end
    return fourdigitheptagons(push!(acc, heptagon(step)), step + 1)
end

function fourdigitheptagons()
    return fourdigitheptagons([], 0)
end

function fourdigitoctagons(acc, step)
    digitcnt = length(string(octagon(step)))
    if digitcnt < 4
        return fourdigitoctagons(acc, step + 1)
    elseif digitcnt > 4
        return acc
    end
    return fourdigitoctagons(push!(acc, octagon(step)), step + 1)
end

function fourdigitoctagons()
    return fourdigitoctagons([], 0)
end

function triangleends(acc, list)
    if list == []
        return acc
    end
    triangle = string(pop!(list))
    acc[triangle[3:4]] = push!(get(acc, triangle[3:4], []), triangle[1:2])
    return triangleends(acc, list)
end

function triangleends()
    return triangleends(Dict(), fourdigittriangles())
end

function squareends(acc, list)
    if list == []
        return acc
    end
    square = string(pop!(list))
    acc[square[3:4]] = push!(get(acc, square[3:4], []), square[1:2])
    return squareends(acc, list)
end

function squareends()
    return squareends(Dict(), fourdigitsquares())
end

function pentagonends(acc, list)
    if list == []
        return acc
    end
    pentagon = string(pop!(list))
    acc[pentagon[3:4]] = push!(get(acc, pentagon[3:4], []), pentagon[1:2])
    return pentagonends(acc, list)
end

function pentagonends()
    return pentagonends(Dict(), fourdigitpentagons())
end

function hexagonends(acc, list)
    if list == []
        return acc
    end
    hexagon = string(pop!(list))
    acc[hexagon[3:4]] = push!(get(acc, hexagon[3:4], []), hexagon[1:2])
    return hexagonends(acc, list)
end

function hexagonends()
    return hexagonends(Dict(), fourdigithexagons())
end

function heptagonends(acc, list)
    if list == []
        return acc
    end
    heptagon = string(pop!(list))
    acc[heptagon[3:4]] = push!(get(acc, heptagon[3:4], []), heptagon[1:2])
    return heptagonends(acc, list)
end

function heptagonends()
    return heptagonends(Dict(), fourdigitheptagons())
end

function octagonends(acc, list)
    if list == []
        return acc
    end
    octagon = string(pop!(list))
    acc[octagon[3:4]] = push!(get(acc, octagon[3:4], []), octagon[1:2])
    return octagonends(acc, list)
end

function octagonends()
    return octagonends(Dict(), fourdigitoctagons())
end

function squarestarts(acc, list)
    if list == []
        return acc
    end
    square = string(pop!(list))
    acc[square[1:2]] = push!(get(acc, square[1:2], []), square[3:4])
    return squarestarts(acc, list)
end

function squarestarts()
    return squarestarts(Dict(), fourdigitsquares())
end

function pentagonstarts(acc, list)
    if list == []
        return acc
    end
    pentagon = string(pop!(list))
    acc[pentagon[1:2]] = push!(get(acc, pentagon[1:2], []), pentagon[3:4])
    return pentagonstarts(acc, list)
end

function pentagonstarts()
    return pentagonstarts(Dict(), fourdigitpentagons())
end

function hexagonstarts(acc, list)
    if list == []
        return acc
    end
    hexagon = string(pop!(list))
    acc[hexagon[1:2]] = push!(get(acc, hexagon[1:2], []), hexagon[3:4])
    return hexagonstarts(acc, list)
end

function hexagonstarts()
    return hexagonstarts(Dict(), fourdigithexagons())
end

function heptagonstarts(acc, list)
    if list == []
        return acc
    end
    heptagon = string(pop!(list))
    acc[heptagon[1:2]] = push!(get(acc, heptagon[1:2], []), heptagon[3:4])
    return heptagonstarts(acc, list)
end

function heptagonstarts()
    return heptagonstarts(Dict(), fourdigitheptagons())
end

function octagonstarts(acc, list)
    if list == []
        return acc
    end
    octagon = string(pop!(list))
    acc[octagon[1:2]] = push!(get(acc, octagon[1:2], []), octagon[3:4])
    return octagonstarts(acc, list)
end

function octagonstarts()
    return octagonstarts(Dict(), fourdigitoctagons())
end