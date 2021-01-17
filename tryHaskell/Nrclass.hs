-- NumberClassifier exc.
main = do
 printer "Abundant" abundantNrsList
 printer "Perfect" perfectNrsList
 printer "Deficient" deficientNrsList

printer :: [Char] -> (Int -> [Int]) -> IO ()
printer start func = do
 putStrLn (start ++ " numbers up to 50:")
 print(func 50)

-- same as a mod b
isFactor :: Int -> Int -> Int
isFactor a b
 | a - b > b = isFactor (a-b) b
 | a - b == b = 0
 | a == b = 0
 | otherwise = b

factorList :: Int -> [Int]
factorList n = filter (\i -> n `isFactor` i == 0) [1..n]

funcList :: (Int -> Bool) -> Int -> [Int]
funcList func n = filter func [2..n]

generalised :: (Int -> Int -> Bool) -> Int -> Bool
generalised op n = (sum (factorList n) - n) `op` n

isAbundant :: Int -> Bool
isAbundant = generalised (>)

abundantNrsList :: Int -> [Int]
abundantNrsList = funcList isAbundant

isPerfect :: Int -> Bool
isPerfect = generalised (==)

perfectNrsList :: Int -> [Int]
perfectNrsList = funcList isPerfect

isDeficient :: Int -> Bool
isDeficient = generalised (<)

deficientNrsList :: Int -> [Int]
deficientNrsList = funcList isDeficient
