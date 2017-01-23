def josephus(circle, num)
  eliminated = []
  until circle == []
    circle.rotate!(num)
    eliminated << circle.pop
  end
  eliminated
end

p josephus([1,2,3,4,5,6,7],3)

# josephus([1,2,3,4,5,6,7],3)==[3,6,2,7,5,1,4]

# [1,2,3,4,5,6,7] - initial sequence
# [1,2,4,5,6,7] => 3 is counted out and goes into the result [3]
# [1,2,4,5,7] => 6 is counted out and goes into the result [3,6]
# [1,4,5,7] => 2 is counted out and goes into the result [3,6,2]
# [1,4,5] => 7 is counted out and goes into the result [3,6,2,7]
# [1,4] => 5 is counted out and goes into the result [3,6,2,7,5]
# [4] => 1 is counted out and goes into the result [3,6,2,7,5,1]
# [] => 4 is counted out and goes into the result [3,6,2,7,5,1,4]