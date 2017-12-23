module Main where
import Data.Char (toUpper)

main :: IO ()
main = return ()

multiplyInts :: Int -> Int -> Int -> Int
multiplyInts x y z = x * y * z

evenOddChk :: Int -> String
evenOddChk y = 
    if (mod y 2) == 0
        then "even"
        else "odd"

-- sumInts :: Int -> [Int] -> Int
-- sumInts x lst =
--     if (x==0)
sumOfListIntrnl :: Int -> [Int] -> Int
sumOfListIntrnl total lst =
    if (lst == [])
    then total
    else sumOfListIntrnl (total + (head lst)) (tail lst)

sumOfList :: [Int] -> Int
sumOfList lis = sumOfListIntrnl 0 lis

sumOfEven :: Int -> [Int] -> Int
sumOfEven total lst =
    if (lst == [])
        then total
        else if (mod (head lst) 2) == 0
        then sumOfEven (total + (head lst)) (tail lst)
        else sumOfEven total (tail lst)

doubleList :: [Int] -> [Int] -> [Int]
doubleList finList strtList =
    if strtList == []
        then finList
        else doubleList (finList ++ [(head strtList) * 2]) (tail strtList)

doubleListext :: [Int] -> [Int]
doubleListext lst = doubleList [] lst

-- Fuction signatures define number and type of variables with the return type
capMeUp :: String -> String -> String
capMeUp cstr str =
    if (str == [])
        then cstr
        else capMeUp (cstr ++ [toUpper (head str)]) (tail str)
        -- else capMeUp cstr ++ [toUpper (head str)] (tail str)