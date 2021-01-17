-- HigherLower guessing game
module HigherLower where
import Text.Read
import System.Random

play = do
    putStrLn ("I know a number between 1 and 50")
    myNumber <- randomRIO (1, 50) :: IO Int
    putStrLn ("Try guessing it!")
    interactiveGuessing myNumber

interactiveGuessing :: Int -> IO()
interactiveGuessing solution = do
    input <- getLine
    let guess = readMaybe input :: Maybe Int
    case guess of
        Just g -> do
            case checkGuess g solution of
                Right ranswer -> putStrLn ("Your guess is " ++ ranswer)
                Left wanswer ->  do
                    putStrLn ("My number is "++ wanswer ++ " than yours. Try again:")
                    interactiveGuessing solution
        Nothing -> do
            putStrLn "This is not a valid number. Retry..."
            interactiveGuessing solution

checkGuess :: Int -> Int -> Either String String
checkGuess n solution
    | n == solution = Right "correct!"
    | n < solution = Left "larger"
    | n > solution = Left "smaller"