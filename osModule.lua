--os time counts the time from 1970 till now or specified(this of course can be made into a variable)
-- print(os.time()/ 31,556,952)
-- print(os.time({
--     year = 1999,
--     month = 2,
--     day = 4,
--     hour = 16,
--     min = 44,
--     sec = 55,
-- })--[[in this part you can use math to get a better ussable number]])

local past = os.time({
    year = 1999,
    month = 2,
    day = 4
})
print(os.difftime(os.time(), past))

local date = os.date()

print(date)

--os.getenv() is for getting the path to a file or otherwise

-- to rename files use os.rename(the old name, the new name) or only the old name to dellete it.

--[[warning!!!###!#!#!!! do not use os.execute 
(this makes things happen in the terminal and can and will destroy your system unless you know 100% what you are doing )]]

--to time something use a start time like so,
local start = os.clock()

for i = 1, 100000000 do
    local i = i + 1
    if i == 19990204 then
        os.exit()--this is for stopping a program, for example in a game the player dies, now it exits the program.
    end
end 

print(os.clock() - start)
