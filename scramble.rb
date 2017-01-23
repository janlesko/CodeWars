# Write function scramble(str1,str2) that returns true if a portion of str1 
# characters can be rearranged to match str2, otherwise returns false.

# For example:
# str1 is 'rkqodlw' and str2 is 'world' the output should return true.
# str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
# str1 is 'katas' and str2 is 'steak' should return false.

# Only lower case letters will be used (a-z). No punctuation or digits 
# will be included.

# def scramble(str1, str2)
#   ary1 = str1.chars
#   ary2 = str2.chars
#   matches = 0
#   ary2.each do |char|
#     index = ary1.index(char)
#     if index
#       matches += 1
#       ary1.delete_at(index)
#     end
#   end
#   matches == str2.size
# end

# def scramble(str1, str2)
#   ary1 = str1.chars
#   str2.chars.each do |char2|
#     matched = ary1.find { |char1| char1 == char2 }
#     return false if matched == nil
#     index = ary1.index(matched)
#     ary1.delete_at(index)
#   end
#   str1.size - str2.size == ary1.size
# end

def scramble(str1, str2)
  str2.squeeze.chars.each do |char|
    return false if str1.count(char) < str2.count(char)
  end
  true
end

p scramble('rkqodlw','world')
# p scramble('cedewaraaossoqqyt','codewars')
# p scramble('katas','steak')
# p scramble('scriptjava','javascript')