# def solution(num)
#   ones, tens, hundreds, thousands = num.to_s.reverse.chars.map { |num| num.to_i }
#   result = ''
#   result << translate(thousands, "M", "_", "_") <<
#             translate(hundreds, "C", "D", "M") <<
#             translate(tens, "X", "L", "C") <<
#             translate(ones, "I", "V", "X")
#   result
# end

# def translate(num, sym1, sym2, sym3)
#   return '' if !num || num.zero?
#   case num
#   when (1..3) then sym1 * num
#   when 4      then sym1 + sym2
#   when 5      then sym2
#   when (6..8) then sym2 + sym1 * (num - 5)
#   when 9      then sym1 + sym3
#   end
# end

NUMERALS = { M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90,
               L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 }

# def solution(number)
#   return '' if number <= 0
#   NUMERALS.each do |key, val|
#     if number >= val
#       return key.to_s + solution(number - val)
#     end
#   end
# end

def solution(number)
  roman = ""
  NUMERALS.each do |key, value|
    quotient, modulus = number.divmod(value)
    roman += key.to_s * quotient
    number = modulus
  end
  roman
end

p solution(2031)
# p solution(12)
# p solution(340)

