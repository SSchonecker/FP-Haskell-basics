-- recursion
main = do
	putStrLn ("First ten fibonacci numbers:")
	print(map fibonacci [1..10])

fibonacci :: Int -> Int
fibonacci 1 = 0
fibonacci 2 = 1
fibonacci nr = fibonacci (nr - 1) + fibonacci (nr - 2)