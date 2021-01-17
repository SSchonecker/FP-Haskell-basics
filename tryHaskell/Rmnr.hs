-- determine roman numerals
import Data.Map (Map)
import qualified Data.Map as Map

rmnrs :: [(Char, Int)]
rmnrs = [('I', 1), ('V', 5), ('X', 10), ('L', 50), ('C', 100), ('D', 500), ('M',1000)]

parseNrC :: Char -> Int
parseNrC c =
 if Map.member c (Map.fromList rmnrs)
 then Map.fromList rmnrs Map.! c
 else 0

twoToInt (i:doub)
 | i >= (last doub) = i + (last doub)
 | 2 * i == (last doub) = i + (last doub)
 | i < (last doub) = (last doub) - i
 
parseNrS :: [Char] -> Int
parseNrS s =
 if and (map (\c -> Map.member c (Map.fromList rmnrs)) s)
 then intListToInt (map parseNrC s)
 else 0
 
intListToInt :: [Int] -> Int
intListToInt ints =
 if (length ints) == 2
 then twoToInt ints
 else intListToInt (init (init ints) ++ nr:[])
  where nr = twoToInt (last (init ints):last ints:[])
  
  
  
  
----------------------------- block commenting goes with ctrl+q
-- easyParseNrS :: [Char] -> Int
-- easyParseNrS s = 
 -- if and (map (\c -> Map.member c (Map.fromList rmnrs)) s)
 -- then sum (map parseNrC s)
 -- else 0

-- doubleParseNrS :: [Char] -> Int
-- doubleParseNrS s = 
 -- if and (map (\c -> Map.member c (Map.fromList rmnrs)) s)
 -- then twoToInt (map parseNrC s)
 -- else 0

 