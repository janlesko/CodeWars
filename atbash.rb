# In the Atbash cipher, the first letter of the alphabet is substituted with the 
# last letter, the second letter with the second to last letter, and so on.

class AtbashCipher
  def initialize(abc)
    @abc = abc
  end
  
  def encode(str)
    str.chars.map do |char|
      @abc.include?(char) ? @abc.reverse[@abc.index(char)] : char
    end.join
  end
  
  def decode(str)
    encode(str)
  end
end

abc = ('a'..'z').to_a.join

c = AtbashCipher.new(abc)

p c.encode("Axyz")