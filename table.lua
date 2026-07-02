--[[
    a table is in basic terms a variable with multiple "information peasses" or multiple variable recognized as undr one variable
]]
local arr = {"hello", "o hi there", "bye"}

print(arr[1])

--table's can be sorted by use of table.sort()
local arr1 = {20, 1, 4}

table.sort(arr1)

--[[you can also insert or delete data into/from an table by using 
table.insert/delete("the table variable", "where in the table", "what needs to be added")
]]

--[[
    you can also make a table inside of a table
]]

local arr2 = {
    {2, 4, 6--[[this is the second bracked't part after the first]]}, --this is the first[1] 
    {9, 0, -3}, --this the first[2]
    {333, 666, 777} --this is the first[3]
}

print(arr2[2][3])--here you get the second table and select the third datapoint within mentions table.