def unique_in_order(input)
  case input
  when String
    input.squeeze.chars
  when Array
    input.each_with_object([]) do |ele, obj|
      obj.pop if obj.last == ele
      obj << ele
    end
  end
end

p unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
p unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
p unique_in_order([1,2,2,3,3])       == [1,2,3]
p unique_in_order(["a", "a", "b", "c"]) == ["a", "b", "c"]