
-- Example functions

doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y

factorial x = if x <= 1 then 1 else x * factorial (x - 1)
ackermann x y = if x == 0
                then y+1
                else (if y == 0
                      then ackermann (x - 1) 1
                      else ackermann (x - 1) (ackermann x (y - 1)))

-- Very inefficient, since the same value of x will be evaluated over and over.
-- fibo 40 already takes a few minutes.
fibo x = (if x == 0 then 0 else
            (if x == 1 then 1 else fibo (x - 1) + fibo (x - 2)))
