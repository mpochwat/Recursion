def fibs(num, result=[])
  for i in 1..num
  	if i == 1 || i == 2
  		result << 1
  	else
  		result << result[-1] + result[-2]
  	end
  end
  result
end

def fibonacci(n)
	if n == 1 || n == 2
		1
	else
		fibonacci(n-1) + fibonacci(n-2)
	end
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

p fibs_rec(0)
p fibs_rec(1)
p fibs_rec(2)
p fibs_rec(5)
p fibs_rec(10)

p fibs(0)
p fibs(1)
p fibs(2)
p fibs(5)
p fibs(10)
