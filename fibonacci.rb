def fibs(num, result=[])
  for i in 1..num
  	num = ( i == 1 || i == 2 ) ? 1 : result[-1] + result[-2]
  	result << num
  end
  result
end

def fibonacci(n)
  	fib_num = ( n == 1 || n == 2 ) ? 1 : fibonacci(n-1) + fibonacci(n-2)
end

def fibs_rec(num, result=[])
	if num == 0
	elsif num == 1
		result << 1
	else
		result.concat(fibs_rec(num-1))
		result << fibonacci(num)
	end
	result
end

p fibs(0) #=> []
p fibs(1) #=> [1]
p fibs(2) #=> [1,1]
p fibs(5) #=> [1,1,2,3,5]
p fibs(10) #=> [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

p fibs_rec(0) #=> []
p fibs_rec(1) #=> [1]
p fibs_rec(2) #=> [1,1]
p fibs_rec(5) #=> [1,1,2,3,5]
p fibs_rec(10) #=> [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
