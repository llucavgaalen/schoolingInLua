--[[
if (condition for execution) then 
    result of true statement

    one thing to keep in mind is to use end at the end of if statements in lua,
    as they otherwise don't function.
]]
if true then
    print("hi")
end

--[[
     varias operators for if statements
     <  bigger than
     >  smaller than
     <= bigger or equal to
     >= smaller or equal to
    ~=  not
    ==  same as/equal to
]]
--examples

local age = math.random(1, 90)

if age >= 21 then
    print("welcome to adulthood")
else
    print("enjoy while your childhood lests")
end 

--[[
    rules of execution of if statement
    true == execute
    false == not
    and:
    true and true == execute
    false and false,
    true and false,
    false and true == not

    or
    true or true,
    true or false,
    false or true == execute
    false or false == not 
]]
--[[
not placed after if makes the comparison a false statement
not true == a false statement
not false == makes a true statement
]]
if not (age < 21) then
    print("yo there")
else
    print("no")
end

--when makinf if statements make sure to put them in the right type of bracket like () or {} or [] 

--[[
    another way to make a conditional statemant is to put the condition in the variable.
]]

local time = math.random(1,24)

local late = time >= 20 and true or false

local early = time <= 6 and true or false

-- now we could make a print(late) and it will print true or false depending on whether its true or not or you can make a if statement

if late == true then
    print("It's quiet late.")
elseif early == true then
    print("It's quiet early.")
else 
    print("It's currently " .. time .. "a'clock.")
end