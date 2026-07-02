--[[small note, a function works like a "file" within a file, so if something inside the function isn't made global,
 it can not be accessed outside the function
]]
--[[
    function is a reusable variable of sorts
    you can also make it a local function by placing local in front of function
]]
function one(name) --[[ one is in this case what is used to call upon the function, 
    within () is the value reverence for inside the function indicated outside.]]
    name = name or "2E" -- you can also make a default.
    print("hey there " .. name .. " how are you")  
end

one("9s")
one("2B")

function two()--in this case the function "two" is a print that can be repeated,
    print("just a print")--this print(or other) can be alterd and wherever two is will then display the alterd state of things. 
end

two()

function sum(n1, n2)--in order to use n1 + n2 we need it returned because otherwise it will not do anything with the results.
    return n1 + n2--return is = end so therefor there can't be anything after that
end

print(sum(1, 4))

add10 = function (number)
    outcome = 10 + number
    return number,outcome
end

stored, outpute = add10(4)--[[
    to leave 4 out of it you place a _ instead of stored and leave it out at print as well.
]]
print(stored .. " is adde to 10 = " .. outpute)

--you can also make a counter with function
-- function counter(number, end_n)
--     number = 0
--     count = number + 1
--     return count
-- end

-- print(counter(1, 18))
--this however makes it so that it doesnt keep counting so we need to add a if inside the function

local function counter(number, end_n)
    local count = number + 1

    if(count < end_n) then
        print(count)
        return counter(count, end_n)
    end

    return count
end

print(counter(-1, 18))

--however if you want it to count up/down every time the function is called on it needs to be don differently

local function counterx()
    local count = 0

    return function()
        count = count + 1
        return count
    end
end

local x = counterx()

print(x())
print(x())
print(x())
print(x())
print(x())

--to get a infinite amount of arguments you use (...)
local function sum1(...)
    local sums = 0

    for key, value in pairs({...}) do
        print(key)
        -- print(value)
    end
    return...
end

print(sum1(3, 9, 27))