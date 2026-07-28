--be sure to go over this again as i didn't 100% get it

-- local function addTableValues(x, y)
--     return x.num + y.num
-- end

-- local metatable = {
--     __add = addTableValues, --__add is the equivalent of + or adding onto
--     __sub = function(x, y)
--         return x.num - y.num
--     end
-- }

-- local tbl1 = { num = 15 }
-- local tbl2 = { num = 19 }

-- setmetatable(tbl1, metatable)

-- local ans = tbl1 + tbl2

-- print(ans)
--[[
    __add   =   +
    __sub   =   -
    __mul   =   *
    __div   =   /
    __mod   =   %
    __pow   =   ^
    __concat=   ..
    __len   =   #
    __eq    =   ==
    __lt    =   <
    __le    =   <=
    __gt    =   >
    __ge    =   >=
]]


local function addTableValues(v1, v2)
    return {x = v1.x + v2.x, y = v1.y + v2.y}
end

local metatable = {
    __add = addTableValues, --__add is the equivalent of + or adding onto
    __sub = function(x, y)
        return x.num - y.num
    end
}

local tbl1 = { x = 10, y = 33 }
local tbl2 = { x = 1, y = 9 }

setmetatable(tbl1, metatable)

local vec = tbl1 + tbl2

print("x: " .. vec.x .. "\ny: " .. vec.y)