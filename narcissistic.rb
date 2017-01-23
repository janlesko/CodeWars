# Your code must return true or false depending upon whether the given number is a Narcissistic number.

#A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits.

def narcissistic(num)
  num.to_s.chars.map { |char| char.to_i ** num.to_s.size }.inject(:+) == num
end

p narcissistic(153)