def persistence(num)
  counter = 0
  num_array = num.to_s.chars.map(&:to_i)
  while num_array.count > 1
    num_array = num_array.inject(:*).to_s.chars.map(&:to_i)
    counter += 1
  end
  counter
end

# def persistence(n)
#   n < 10 ? 0 : 1 + persistence(n.to_s.chars.map(&:to_i).reduce(:*))
# end

p persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                 # and 4 has only one digit

p persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                  # 1*2*6=12, and finally 1*2=2

p persistence(4) # returns 0, because 4 is already a one-digit number