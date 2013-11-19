
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
