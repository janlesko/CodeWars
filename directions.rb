# Write a function dirReduc which will take an array of strings and returns 
# an array of strings with the needless directions removed 
# (W<->E or S<->N side by side).
# In ["NORTH", "SOUTH", "EAST", "WEST"], the direction "NORTH" + "SOUTH"
# is going north and coming back right away. What a waste of time! Better 
# to do nothing.

# def dirReduc(arr)
#   dir = arr
#   index = 0
#   loop do 
#     amended = false
#     while index < dir.size
#       if dir[index] == "NORTH" && dir[index + 1] == "SOUTH" ||
#         dir[index] == "SOUTH" && dir[index + 1] == "NORTH" ||
#         dir[index] == "EAST"  && dir[index + 1] == "WEST" ||
#         dir[index] == "WEST"  && dir[index + 1] == "EAST"
#           dir.delete_at(index)
#           dir.delete_at(index)
#           amended = true
#       else
#         index += 1
#       end
#     end
#     break if amended == false
#     index = 0
#   end
#   dir
# end

# arr = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]

# dirReduc(arr)

OPPOSITE = {
  "NORTH" => "SOUTH",
  "SOUTH" => "NORTH",
  "EAST"  => "WEST",
  "WEST"  => "EAST"
}

def dirReduc(arr)
  stack = []
  arr.each do |dir|
    OPPOSITE[dir] == stack.last ? stack.pop : stack.push(dir)
  end
  stack
end

arr = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]

dirReduc(arr)
