#write your code here
def add(x,y)
	return x + y
end

def subtract(x,y)
	return x - y
end

def sum(arr)
	sum = 0
	arr.each do |n|
		sum += n
	end
	return sum
end

def multiply(ary)
	multi = 1
	ary.each do |n|
		multi = multi * n
	end
	return multi
end

def power(x,y)
	return x ** y
end

def factorial(n)
	if n == 0
		return 0
	elsif n == 1
		return 1
	else
		return n * factorial(n-1)
	end
end


