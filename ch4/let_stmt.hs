
{-
 Exercise the let statement and pattern-matching
 -}

{-
 Quicksort implementation -- not intended to be realistic or efficient
 -}

quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:[]) = [x]
quicksort (x:xs) = let pivot = x
                   in let lesser = [e | e <- xs, e < pivot]
                          pivots = filter (== pivot) xs
                          greater = [e | e <- xs, e > pivot]
                       in ((quicksort lesser) ++
                           pivots ++ [pivot] ++
                           (quicksort greater))

{- More compact version I found online -}
q2 [] = []
q2 (p:xs) = (q2 lesser) ++ [p] ++ (q2 greater)
    where
        lesser  = filter (< p) xs
        greater = filter (>= p) xs


{-
 Return the top marginal tax rate based on your income (single)
 -}

marginalTax income
 | income <   8925 = 0.10
 | income <  36250 = 0.15
 | income <  87850 = 0.25
 | income < 183250 = 0.28
 | income < 398350 = 0.33
 | income < 400000 = 0.35
 | otherwise       = 0.396
