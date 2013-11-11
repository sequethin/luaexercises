ex54 = {}
ex54.factorial = function(num)
    result = num
    for iter = num-1, 1, -1 do
        result = result * iter
    end
    return result
end

ex54.P = function(n, r)
    P = ex54.factorial(n) / ex54.factorial(n - r)
    return P
end

ex54.C = function(n, m)
    denom = (ex54.factorial(m) * ex54.factorial(n - m))
    if denom == 0 then
        return 1
    elseif n < m then
        return 0
    end
    C = ex54.factorial(n) / denom
    return C
end

ex54.nonRepeatingCombinations = function(t, m, combos)
    local m = m or #t
    local all_combinations = combos or {}
    local count = ex54.C(#t, m)

    print("\nm is " .. m)
    print("Count is " .. count)

    if m == 0 or count == 0 then
        print("DUNZO")
        return all_combinations
    end
    all_combinations[m] = ex54.getCombinations(t, m, count)

    ex54.nonRepeatingCombinations(t, m - 1, all_combinations)
    return all_combinations
end

ex54.getCombinations = function(t, m, count)
    --[[
        Given table: {"Apple", "Orange", "Banana"}, m = 2
            combos should be: {"Apple", "Orange"}
        if m == 2
            combos should be:
                {"Apple"}
                {"Orange"}
                {"Apple", "Orange"}

        to generate all combinations of n elements in groups of size m
        you first add the first element to the result and then
        generate all C(n-1, m-1) combinations of the remaining elements in the free slots
    ]]--
    local combination = {}
    combination[1] = t[1]

    return combination
end

return ex54
