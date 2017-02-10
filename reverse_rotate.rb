# The input is a string str of digits. Cut the string into chunks of size sz 
# (ignore the last chunk if its size is less than sz).

# If a chunk represents an integer such as the sum of the cubes of its digits is 
# divisible by 2, reverse it; otherwise rotate it to the left by one position. 
# Put together these modified chunks and return the result as a string.

# If

# sz is <= 0 or if str is empty return ""
# sz is greater (>) than the length of str it is impossible to take a chunk of 
# size sz hence return "".

def revrot(string, num)
  return "" if num.zero? || string.empty?
  chunks = string.chars.map(&:to_i).each_slice(num).to_a
  chunks.pop if chunks.last.size < num
  result = chunks.map do |chunk|
             if chunk.map { |dig| dig ** 3 }.inject(:+) % 2 == 0
               chunk.reverse
             else
               chunk.rotate
             end
           end
  result.flatten.join
end

revrot("123456987654", 6) #--> "234561876549"
revrot("123456987653", 6) #--> "234561356789"
revrot("66443875", 4) #--> "44668753"
revrot("66443875", 8) #--> "64438756"
revrot("664438769", 8) #--> "67834466"
revrot("123456779", 8) #--> "23456771"
revrot("", 8)# --> ""
revrot("123456779", 0)# --> ""