# Given an array of integers, remove the smallest value. Do not mutate the 
# original array/list. If there are multiple elements with the same value, remove 
# the one with a lower index. If you get an empty array/list, return an empty 
# array/list.

# Don't change the order of the elements that are left.

def remove_smallest(ary)
  reject_index = ary.index(ary.min)
  result = []
  ary.each_with_index do |num, index|
    next if index == reject_index
    result << num
  end
  result
end

# def remove_smallest(numbers)
#   return [] if numbers.empty?
#   numbers.delete_at(numbers.index(numbers.min))
#   return numbers
# end

ary1 = [1,2,3,4,5]
ary2 = [5,3,2,1,4]
ary3 = [2,2,1,2,1]

p remove_smallest(ary1) #= [2,3,4,5]
p remove_smallest(ary2) #= [5,3,2,4]
p remove_smallest(ary3) #= [2,2,2,1]

p ary1
p ary2
p ary3

# find index of the first smallest value
# remove value on that index