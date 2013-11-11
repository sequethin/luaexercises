function solvePoly(poly, x)
    solved = 0;
    n = #poly
    for i = 0, n do
        coef = n - i
        exp = coef - 1
        if exp == 0 then
            solved = solved + poly[coef]
            break
        end
        calcval = poly[coef] * (x ^ exp)
        solved = solved + calcval
    end
    return solved
end

poly = {3,1,7,6}
x = 2

print(solvePoly(poly, x))
