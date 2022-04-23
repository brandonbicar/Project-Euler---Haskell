fib n = fib' n (0,1)
	where
		fib' 0 (a,_) = a
		fib' n (a,b) = fib' (n-1) (b, a+b)

p2 = sum $ filter even $ takeWhile (<= 4000000) [fib x | x <- [1..]]
