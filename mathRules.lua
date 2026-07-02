--[[
in the following lua file the math rules of lua will be explored.
]]

a = 0
b = 1
c = 2
d = 3
e = 4
f = 5
g = 6
h = 7
i = 8
j = 9
-- as can be seen with the following example -, + and 0 work as it does in normal math
print(a - j + j)
--[[
to use root use "math.sqrt()" 
to use squire root use "^"
to use multiplacation use "*"
to use division use "/"
to negate use "-"
to give prioratie use "()"
prioratie is as follows:
    ()
    math.sqrt() 
    ^
    /,  *
    -,  +
]]
print(math.sqrt(9) * i)
print(9*2-1)
print(3+2*math.sqrt(9))
print(3*3+((1+1)+2))
--to print pi simply typr math.pi and print it
print(math.pi)
--[[
now as for randomizers, or "random" is in fact not very random, rather it is given conditions to make it seem random, like using things like:
    time,
    date,
    place,
    what keys where used or
    the mouse movmend,
    etc.
]]
print(math.random(1))
print(math.random())
print(math.random(os.time()))
print(math.random(11, 23))
--[[
    now to get min/max from something use,
    math.min for minimal
    and
    math.max for maximum,

    to round, down use
    math.floor
    and to round up use
    math.ceil
]]
print(math.floor(3.5))
print(math.ceil(3.5))
--[[
    what is math.sin and what is it for
]]
--[[
    what is math.cos and what is it for
]]
--[[
    what is math.tan and what is it for
]]

--[[
        to limit the decimal after the coma, the following are possible solutions

            local myNumber = 3.14159

            -- 2 digits after the comma
            local twoDecimals = string.format("%.2f", myNumber) 
            print(twoDecimals) -- Output: 3.14

            -- 3 digits after the comma
            local threeDecimals = string.format("%.3f", myNumber) 
            print(threeDecimals) -- Output: 3.142

    or


            local function round(val, decimalPlaces)
                local multiplier = 10 ^ decimalPlaces
                return math.floor(val * multiplier + 0.5) / multiplier
            end

            local myNumber = 3.14159
            local result = round(myNumber, 2)
            print(result) -- Output: 3.14

]]