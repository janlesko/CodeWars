# ROT13 is a simple letter substitution cipher that replaces 
# a letter with the letter 13 letters after it in the alphabet. 
# ROT13 is an example of the Caesar cipher.

# Create a function that takes a string and returns the string 
# ciphered with Rot13. If there are numbers or special characters 
# included in the string, they should be returned as they are. 
# Only letters from the latin/english alphabet should be shifted, 
# like in the original Rot13 "implementation".

def rot13(string)
  decprypted = ''
  string.chars.each do |char|
    decprypted << case char
                    when 'a'..'m', 'A'..'M'
                      (char.ord + 13).chr
                    when 'm'..'z', 'M'..'Z'
                      (char.ord - 13).chr
                    else
                      char
                    end
  end
  decprypted
end

p rot13("Grf-g")