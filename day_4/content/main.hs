import System.IO
import Data.Char(toUpper)
import Data.List
import Data.Maybe

main :: IO ()
main = do 
        inpStr <- readFile "../input/input4.txt"
        let contents = lines inpStr
        print (sum (map overlapp (map split contents)))
        print (sum (map overlapp2 (map split contents)))


split :: String -> (Int, Int, Int, Int)
split s = (low_1, high_1, low_2, high_2) where
    dash_indices = elemIndices '-' s
    comma_index = fromJust (elemIndex ',' s)
    low_1 = read (take (dash_indices !! 0) s) :: Int
    high_1 = read (drop (1 + dash_indices !! 0) (take comma_index s)) :: Int
    low_2 = read (drop (1 + comma_index) (take (dash_indices !! 1) s)) :: Int
    high_2 = read (drop (1 + dash_indices !! 1) s) :: Int

overlapp :: (Int, Int, Int, Int) -> Int
overlapp (low_1, high_1, low_2, high_2) = (res) where
    res = if (low_1 <= low_2 && high_1 >= high_2) || (low_2 <= low_1 && high_2 >= high_1) then 1
    else 0

overlapp2 :: (Int, Int, Int, Int) -> Int
overlapp2 (low_1, high_1, low_2, high_2) = (res) where
    res = if (low_1 <= low_2 && high_1 >= low_2) || (low_1 <= high_2 && high_1 >= high_2) || (overlapp (low_1, high_1, low_2, high_2) == 1) then 1
    else 0