describe ("Write a function that receives an array and prints all combinations of the elements in the array", function()
    local ex54

    before_each(function()
        package.path = package.path .. ";../?.lua"
        ex54 = dofile('ex5.4-combinations.lua')
    end)

    describe("The number of combinations requires the use of factorial", function()
        it("Calculates 0! as 0", function()
            assert.are.equal(0, ex54.factorial(0))
        end)
        it("Calculates 1! as 1", function()
            assert.are.equal(1, ex54.factorial(1))
        end)
        it("Calculates 2! as 2", function()
            assert.are.equal(2, ex54.factorial(2))
        end)
        it("Calculates 3! as 6", function()
            assert.are.equal(6, ex54.factorial(3))
        end)
        it("Calculates 4! as 24", function()
            assert.are.equal(6, ex54.factorial(3))
        end)
    end)

    describe("P(n,r)", function()
        it("Is defined as n! / (n - r)!", function()
            assert.are.equal(90, ex54.P(10,2))
        end)
    end)

    describe("C(n,r)", function()
        it("Is defined as n! / r!(n-r)!", function()
            assert.are.equal(560, ex54.C(16,3))
        end)
        it("Will return 1 combination if m == #t", function()
            assert.are.equal(1, ex54.C(16,16))
        end)
    end)

    describe("Recursive count", function()
        it("Should be possible to recurse and get the same count", function()
            assert.are.equal(ex54.C(16,3), ex54.C(15, 2) + ex54.C(15, 3))
        end)
    end)

    describe("Displaying the non-repeating combinations", function()
        --it("Should return 1 combination for a table with 1 element", function()
            --expected_result = {
                --{"Apple"},
            --}
            --assert.are.same(
                --expected_result, ex54.nonRepeatingCombinations({"Apple"})
            --)
        --end)
        it("Should return 3 combinations for a table with 2 elements", function()
            expected_result = {
                {"Apple", "Orange"},
                {"Apple"},
                {"Orange"},
            }
            assert.are.same(
                expected_result, ex54.nonRepeatingCombinations({"Apple", "Orange"})
            )
        end)
    end)
end)
