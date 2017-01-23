# Given a list lst and a number N, create a new list that contains each number of lst at most N times without reordering. 
# For example if N = 2, and the input is [1,2,3,1,2,1,2,3], you take [1,2,3,1,2], drop the next [1,2] since this would lead 
# to 1 and 2 being in the result 3 times, and then take 3, which leads to [1,2,3,1,2,3].

def delete_nth(order,max_e)
  result = []
  order.each do |num|
    next if result.count(num) == max_e
    result << num
  end
  result
end

p delete_nth([20,37,20,21], 1)
p delete_nth([1,1,3,3,7,2,2,2,2], 3)