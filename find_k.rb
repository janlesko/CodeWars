# input:
#   - num1 (possitive integer)
#   - num2 (possitive integer)
  
# output:
#   if k (sum / num2) > zero
#     k
#   else
#     -1
  
# sum: the digits of number1 which are powered successively by number2

# algorith:

# - split num1
# - iterate through each number from num1 and power it by num2, increasing num2 by 1
# with each iteration
# - take the result of the iteration and compare it to k

def dig_pow(num1, num2)
  digits = num1.to_s.chars
  powered = digits.each_with_index.map { |dig, index| dig.to_i ** (num2 + index) }
  summed = powered.inject(:+)
  k = summed / num1
  k.zero? ? -1 : k
end

p dig_pow(89, 1)
p dig_pow(92, 1)
p dig_pow(695, 2)
p dig_pow(46288, 3)
