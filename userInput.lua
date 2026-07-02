-- io. is for input
--io.read()
--io.read()you can now write a response
io.write("Hy there, what is your name: ")
local name = io.read()
print("Hello there " .. name .. ", nice to meet you.")


local I = math.random(0, 90)
local II = math.random(0, 10)
local true_ans = I + II

io.write("Try this simple math problem please " .. I .. " + " .. II .. ": ")
local ans = io.read()

if tonumber(ans) == true_ans then
    print("you are correct!")
else
    print(ans .. " is not correct :( ?!")
end
