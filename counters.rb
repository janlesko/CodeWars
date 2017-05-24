def queue_time(customers, counters)
  customers.each_with_object(Array.new(counters, 0)) do |cus, con|
    min_index = con.index(con.min)
    con[min_index] += cus
  end.max
end

queue_time([5,3,4], 1)
queue_time([10,2,3,3], 2)
p queue_time([2,2,3,3,4,4], 2)