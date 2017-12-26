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

-- Check if a character exists in a given string. 
chkChar :: Char -> String -> Bool
chkChar chkC chkStr =
    if chkStr == []
        then False
        else if chkC == (head chkStr)
            then True
            else chkChar chkC (tail chkStr)

-- (Case insensitve) Check if a character exists in a given string. 
chkCharI :: Char -> String -> Bool
chkCharI chkC chkStr =
    if chkStr == []
        then False
        else if toUpper chkC == toUpper (head chkStr)
            then True
            else chkCharI chkC (tail chkStr)

chkAllCharI :: String -> String -> Bool
chkAllCharI chkStr inStr = 
    if chkStr == []
        then True
        else if chkCharI (head chkStr) inStr
            then chkAllCharI (tail chkStr) inStr
            else False

-- List of even numbers till N
evenLstInt :: Int -> [Int] -> [Int]
evenLstInt n lst =
    if n == 0
        then lst
        else if (mod n 2) == 0
            then evenLstInt (n-1) (n:lst)
            else evenLstInt (n-1) lst

evenLst :: Int -> [Int]
evenLst n = evenLstInt n []

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
    if (length lst == n)
        then lst
        else [0]