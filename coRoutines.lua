-- coroutine is a function to get codes running past oneanother by pauzing one till it can be resumed
local routine_1 = coroutine.create(
    function ()
        for i = 1, 10, 1 do
            print("(Routine 1): " .. i)
            --print(coroutine.status(routine_1))(by having it here it will give a continues update on the states of the program)
            if i == 5 then
                coroutine.yield()
            end
        end
    end
)

local routine_func = function ()
    for i = 11, 20, 1 do
        print("(Routine 2): " .. i)
    end
end

local routine_2 = coroutine.create(routine_func)

coroutine.resume(routine_1)

-- because the first routine gets suspended print(coroutine.status(routine_1)) will show it's corresponding status(suspended)
print("first suspense")
-- you can also make if statements for coroutines
coroutine.resume(routine_1)
print(coroutine.status(routine_1))
print("now routine 2 goes")
coroutine.resume(routine_2)
print(coroutine.status(routine_2))