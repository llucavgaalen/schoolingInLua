--here we are going over loops, in other words how to repeat something.

-- "for" = a counting loop (can be used by having the numbers as variables outside the loop = to something)
for i = 0, 30, math.pi do
    print(string.format("%.3f", i))
    --this is an example of using pi, which if you dont manually limit it's decimal will come out as bit to big of a number for conventianal use.
end

local num = ''
local num2 = ''


local start = 0
local ending = 30
local jump = 4

--this is an example of getting the results in one line with space in between but not at the end by adding if statemant.
for i = start, ending, jump do --[[ you can count in reverse on the condition you,
                                    put in this case the start and ending on the oppeside point and make the jump a "-jump"]]
    if i > ending - jump then
        num = num .. tostring(i)
    else
        num = num .. tostring(i) .. " "
    end
end
--the #"variable" to check if all the spacing is as should be
print(#num, num) 

for i = ending, start, -jump do
    if i < start + jump then
        num2 = num2 .. tostring(i)
    else
        num2 = num2 .. tostring(i) .. " "
    end
end
print(num2, "-", #num2)

-- "while" = is a loop that will run as long as the value is true or eqeul to true.
local users = 10

while users > -1 do
    if users >= 1 then
        print("users online" .. " " .. users)
        users = users - 1
    elseif users == 0 then
        print("servers offline!!")
        users = users - 1
    end
end

-- "repeat until" = is a repeat function that continues till the end condition made after the until statement is satisfied.
local x = 1

repeat
    print("hey there.")
    x = x + 1
until x == 13

--[[ a difference between "while" and "repeat until", 
is that "while" has a chance of not running depending on how it's written while "repeat until" will run at least once]]

--