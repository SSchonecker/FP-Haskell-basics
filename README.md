# Basics Haskell

Contains Haskell implementations for the recursion-fibonacci, the roman numerals, the number classification and the number-guessing game. <br/>
In CLI in the tryHaskell-folder with .hs, run ghci and :load name.hs to use the functions directly. For the HigherLower-game, the Main.hs file starts the game and the best way to use this is by calling 'cabal run' in the folder with the .cabal file.

Fibonacci shows a recursive function, but becomes rather slow (I didn't wait to find the 45th Fibonacci number), Nrclass is done, Rmnr gives the right numbers if you give decent input (stuff like XXC won't work).

Nrclass details: a perfect number is a number whose divisors add up to exactly the number itself. For example: divs(6) = [1,2,3] -> 1+2+3=6. An abundant number has a sum larger than the number, a deficient number a smaller sum. </br>
(EPp23) By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

HigherLower: This is the typical game of taking a random number and letting a user guess it. It uses both a Maybe -> Just/Nothing check for the correct input type and an Either case to check the given answer. Since the random number generation requires a package that is not easily added to ghc/ghci, I build the program with cabal.

## Notes on using Haskell
Haskell is kind of a cute language. It sometimes feels like a lot is list manipulation, but it really forces you to work functionally.

For import-ing reasons, file names should start with a capital.
Comments start with --.

Rmnr uses a dictionary, Nrclass a sort of inheritance in functions, Fibonacci uses recursion.

Absolutely best source: https://en.wikibooks.org/wiki/Haskell