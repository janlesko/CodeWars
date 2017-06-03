# Fold 1-times:
# [1,2,3,4,5] -> [6,6,3]

# A little visualization (NOT for the algorithm but for the idea of folding):

# Step 1         Step 2        Step 3       Step 4       Step5
#                     5/           5|         5\          
#                     4/            4|          4\      
# 1 2 3 4 5      1 2 3/         1 2 3|       1 2 3\       6 6 3
# ----*----      ----*          ----*        ----*        ----*


# Fold 2-times:
# [1,2,3,4,5] -> [9,6]

def fold_array(array, runs)
  runs.times do
    middle = array.size / 2
    first_half = array[0...middle]
    second_half = array[middle..-1].reverse
    first_half.each_with_index do |ele, index|
      second_half[index] = ele + second_half[index]
    end
    array = second_half
  end
  array
end

# def fold_array(array, runs)
#   array_new = array.dup
#   runs.times do
#     (0...array_new.size / 2).each do |index|
#       array_new[index] = array_new[index] + array_new.pop
#     end
#   end
#   p array
# end

p fold_array([-9, 9, -8, 8, 66, 23], 2)
#expected = [14, 75]

p fold_array([1, 2, 3, 4, 5], 1)
#expected = [6, 6, 3]

p fold_array([1], 20)