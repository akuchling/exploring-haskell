
-- List assignments
lostNumbers = [4,8,15,16,23,42]
lst = [1,2,3];
name = "martin " ++ "gardner";
name2 = let lastName = "Conway"
            in "John H. " ++ lastName

-- Examples of ranges
indexes = [1..20]

lowercase = ['a'..'z']
backward_lower = ['z','y'..'a'] -- need to supply first two values

-- Some infinite lists
odds = [1,3 ..]
evens = [2,4 ..]
new_odds = [ x-1 | x <- evens]

-- list comprehension
large_odds = [ x | x <- odds, x > 1000]
-- listcomp with two iterated variables
pairs = [ [first,last] | first <- ["Andrew", "Colin"], last <- ["Kuchling", "Heck"]]

boomBangs xs = [ if x > 10 then "BANG!" else "BOOM!" | x <- xs, x `mod` 2 == 1]

-- Write a function to remove all odd numbers w/o flattening
xs = [[1,2,3,4],[5,6,7,8,9]]
no_odds xs = [ [x | x <- lst, x `mod` 2 == 0]
               | lst <- xs]
