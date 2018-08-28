# Rudi Boshoff
def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(numbers)
  total = 0

  numbers.each do |value|
    total += value
  end

  total
end

# BONUS TESTS
def multiply(numbers)
  total = 1

  numbers.each do |value|
    total *= value
  end

  total
end

def power(num,exp)
  ans = num**exp
  ans.round(2)
end

def factorial(num)
  total = 1

  for i in 1..num
    total *= i
  end

  total
end
