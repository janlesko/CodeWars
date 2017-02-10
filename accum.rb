# def accum(string)
#   result = ''
#   string.size.times { |x| result += (string[x] * (x + 1)).capitalize + "-" }
#   result.chop
# end

def accum(s)
  s.chars.each_with_index.map{ |c, i| c.upcase + c.downcase * i }.join('-')
end

p accum("abcd")    # "A-Bb-Ccc-Dddd"
p accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
p accum("cwAt")    # "C-Ww-Aaa-Tttt"