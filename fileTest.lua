--io.output/input/etc is for reading/writing/etc is for communicating/ussing files
-- io.output("filetext.txt")--io.output is to direct what file you are "sending/writtong stuff to."

-- io.input("filetext.txt")

-- io.write("this my first text written from a different source.")--[[io.write overwrites everything so make sure it's either meant to happen
--  like that or is only the first time writing to a file]]

-- io.read()--you can put a veriaty of things in io.read which will give different results 
--  a number to get the specafid amount of text
--  "*number" to get numbers
--  "*line" to get a line of text per time it is requisted
-- 

local file_1 = io.open("filetext.txt", "a+")--io.open("what file", "the action that wants to be taken")

file_1:write("\nthis is me adding onto the file.")

-- io.close()--remember to tell your file to close, otherwise it might cause problems like leakege.
-- know that io.close can't always be used, so in this case it will be file_1:close 
file_1:close()

--you can also read using this method, file_1:read("") make it a variable if you want to print it or us it somewhere.
