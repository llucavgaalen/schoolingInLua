-- OOP == Object Orianted Programming/ every object(variable) has it's own value (satus/name/health/etc.)

-- function main()
--     do()
--         something()
-- end

-- function do()
    
-- end

-- function something()
    
-- end

local t = {
    name = "",
    age = "",
    friends = {""}
}

print(t.name)

local function Pet(name)
    name = name or "kitty"
    return{
        name = name,
        stat = "hungry",
        feed = function (self)-- self is to indicate what is in the local in this case(variable functions)
            print(name .. " is being fed.")
            self.stat = "Full"
        end
    }
end

local cat = Pet()
local dog = Pet("Bark")

print(dog.name)
print(cat.name)

print(cat.stat)
cat:feed()
print(cat.stat)




-- you can make sub.cattagories by making one OOP and then later reverensing it, you can now use a base plate and make subcatacorie that make use of it but have there own uniek things

local function Dog(name, breed)
    local dog = Pet(name)
    dog.breed = breed
    dog.loyalty = 0

    dog.isLoyal = function (self)
        return self.loyalty >= 10
    end
    dog.feed = function (self)
        print(name .. " is being fed.")
        self.stat = "Full"
        self.loyalty = self.loyalty + 11
    end

    dog.bark = function(self)
        print("bark bark")
    end
    return dog
end

local kipin = Dog("kipin", "Wolvshound")

print(kipin.breed)

kipin:bark()--to access a functions use :
kipin:feed()
--kipin.breed()--to access a variable use .

if kipin:isLoyal() then
    print("Will protect at all cost")
else
    print("Will put in minimal evert in protecting")
end