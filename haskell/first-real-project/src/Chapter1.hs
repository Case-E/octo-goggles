module Chapter1 where

-- Leap Year
isLeapYear :: Int -> Bool
isLeapYear yr =
    if (mod yr 4) == 0
        then if (mod yr 400) == 0 && (mod yr 100) == 0
            then True
            else if (mod yr 100) == 0
                then False
            else True
        else False

-- List of even numbers till N
evenListTillInt :: Int -> [Int] -> [Int]
evenListTillInt n lst =
    if (n == 0)
        then reverse lst
        -- In the second argument of the function in the following line before the cons operator (:),
        -- we are multiplying the length of the list + 1 with 2 to get the next even number.
        else evenListTillInt (n-1) ((2*((length lst)+1)):lst)

-- Sum of first 1000 of 3 and 5
multT5 :: Int -> Int -> Int
multT5 n total =
    if (n == 0)
        then total
        -- Not so easy to read code below - implementation of n-1 is very convoluted. 
        else if (mod (n-1) 3) == 0 || (mod (n-1) 5) == 0
            then multT5 (n-1) (total + (n-1))
            else multT5 (n-1) total

