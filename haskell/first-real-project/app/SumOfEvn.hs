module SumOfEvn where

sumOfEvn :: Int -> [Int] -> Int
sumOfEvn total lst =
    if (lst == [])
        then total
        else if (mod (head lst) 2) == 0
            then sumOfEvn (total + (head lst)) (tail lst)
            else sumOfEvn (total) (tail lst)

-- sumOfEven :: Int -> [Int] -> Int
-- sumOfEven total lst =
--   if (x == [])
--     then total
--     else if (mod x 2) == 0
--       then (total + (head x)) (tail x)
--       else sumOfEven total (tail x)
