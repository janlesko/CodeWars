# Move the first letter of each word to the end of it, then add 'ay' to the end 
# of the word.

def pig_it(string)
  string.split.map do |word| 
    word =~ /\w/ ? word[1..-1] + word[0] + "ay" : word
  end.join(" ")
end

p pig_it('Pig latin is cool') # igPay atinlay siay oolcay

# - split the string into words
# - take first letter of each word and move to to the end of the word
# - append string "ay" to the word