-- to get text to suspend like this press 'Crtl + /?'

require "mathRules"

-- to put in comments you use "--" witouth the coute marks

-- to show words/text to screen, use `print`
print("Hello world.")

-- to get multyple lines of coute's you use "--[[]]" instead of just the "--"(also witouth the coute marks) 
--[[
this is an example of getting more than one line of coute/txt that is use witouth being read as part of the code/program
etc.
etc.
]]
--[[
to add on extra text or other wise you add a space then two points and another space like so: " .. "
or in case of a variable you use " .. (the variable witouth the ()) .. "
]]
print("this is example" .. "of how to add things in print  by using' .. '")

--[[
    the following will be examples of types used in lua
    nil= nothing/0/ where there is defined as an empty value or false.
    number= any type of number 0/9 / 0.01 etc
    string= anything that is between ``, '' or "" that is than read as text by the program
    boolean= is anything that indicates true or false
    table= (get back to explaining this)
]]

--[[
a variable is (in this case indicated by using local),
to give a value to something,
like "2+4=x" than "x" is a variable with the meaning "2+4",
so by saying "local x" x is now made a variable.
witouth giving the variable a value it is nil,
to give the variable a value use " = " and than whatever it's value needs to be.
]]
local x = nil
--using a variable witouth naming it a locale makes it so it can be used globalie 
name = "Luca"

--[[ 
to figure out what type a variable is you can use the print funtcion by doing
"print(
type(and place here what you want to know the type of)
)" 
]]
print(type(x))

--[[explanation of what a string is(which put simply is a character, number sentence or anything read as a string by the code by using for excample "")
this is also an example to get multiple lines in a single string/variable
]]
local srt = [[
this peace of string
is now
made to
go over multiple lines.
]]
print(srt) 
--to count the amount of string in a string use #
print(#srt)
local sr = #"count"
print(sr)
--[[
to force something to be read as a string or a number use the following 
tostring() for converting to string
and 
tonumber() for converting to number
]]
local srt9 = 88
local tnn = tonumber(srt9)
local ts = tostring(a)
local tn = tonumber(srt)
print(type(tn))
print(type(ts))
print(type(tnn))
--[[
    other things to use in strings
    \
    \\
    \n
    \t
    \v
    \"\"
    \'\'
    \`\`
    \'

]]
--[[
to force the whole string to be lower or upper case use the following
string.lower for lower case
string.upper for upper case
]]
--[[
    to only get part/use part of a string use string.sub("the variable you want witouth the quotes", "the beginning", "the end") (no quotes)
]]
print(string.sub(srt, 8, 24))
--[[
    to get the character/string of a string, number, sign use string.char
    and to get the reverse use string.byte
]]
print(string.char(91))
print(string.byte("T"))
--to get a whole variable, string, number, converted just give the variable, etc
print(string.byte(srt, 1, 67))
--to repeat something use string.rep
print(string.rep("hey", 4))
--[[string.format is best explained as making a placeholders for variables "%d, %f, %s, %x/%X, %e/%E, %%"
    the %... is placed
    and the corresponding type of% is placed outside "" after the coma ","
]]
print(string.format("this is an %s for %s", "example", "us"))
--or
print(string.format("this is an %f for %s", 2, "example"))
--keep note of the order of the variables as, when you do it in an incorrect order, it will come out as an error.

--other examples of string. is match and find for finding or matching a part
print(string.match(srt, "mult"))
print(string.find(srt, "mult"))
--to get bot results as separate variables you make two and the = it to string.find(the variable it needs to be found from, the part you want found"")
local begin, ending = string.find(srt, "multi")
print("Beginning:" .. begin .. "\nEnd:" .. ending)
--[[
to replace things with other things use string.gsub
(the thing/variable where things need replacing, "the thing within the variable to be replaced", "the replacement")
]]
print(string.gsub(srt, "i", "!?!"))--to prevent it from giving a count of how many times it replaces something can be prevented by multiple ways 
