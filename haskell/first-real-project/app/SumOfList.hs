module SumOfList where

    sumOfList :: Int -> [Int] -> Int
    sumOfList total lst =
      if (lst == [])
        then total
        else sumOfList (total + (head lst)) (tail lst)