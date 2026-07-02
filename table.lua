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

--with the idea of a table inside a table you can also go trough both with, as an excample for loop.

local arr3 = {
    {2, 3, 0},
    {22, 30, 13},
    {999, 9, 90},
    {89, 87, 888}
}
for i = 1, #arr3 do --[[#here indicates that the variable (in this case arr3) is being counted, i = 1 meaning the first table
     and j = 1 meaning the first of the first table(2 in this case)]]
    for j = 1, #arr3[i] do
        print(arr3[i][j])
    end
end
