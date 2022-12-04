import System.IO
import Data.Char(toUpper)
import Data.List
import Data.Maybe

main :: IO ()
main = do 
        inpStr <- readFile "../input/input4.txt"
        let contents = lines inpStr
        print . length . filter overlapp_fully $ map split contents
        print . length . filter overlapp_any $ map split contents


split :: String -> (Int, Int, Int, Int)
split s = (low_1, high_1, low_2, high_2) where
    dash_indices = elemIndices '-' s
    comma_index = fromJust $ elemIndex ',' s
    low_1 = read $ take (dash_indices !! 0) s
    high_1 = read $ drop (1 + dash_indices !! 0) $ take comma_index s
    low_2 = read $ drop (1 + comma_index) $ take (dash_indices !! 1) s
    high_2 = read $ drop (1 + dash_indices !! 1) s

overlapp_fully :: (Int, Int, Int, Int) -> Bool
overlapp_fully (low_1, high_1, low_2, high_2) =
    (low_1 <= low_2 && high_1 >= high_2) || (low_2 <= low_1 && high_2 >= high_1)

overlapp_any :: (Int, Int, Int, Int) -> Bool
overlapp_any (low_1, high_1, low_2, high_2) = not (high_1 < low_2 || low_1 > high_2)