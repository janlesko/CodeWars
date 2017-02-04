# Usually when you buy something, you're asked whether your credit card number, 
# phone number or answer to your most secret question is still correct. However, 
# since someone could look over your shoulder, you don't want that shown on your 
# screen. Instead, we mask it.

# Your task is to write a function maskify, which changes all but the last four 
# characters into '#'.

def maskify(string)
  # string.size > 4 ? "#{"#" * (string.size - 4)}#{string[-4, 4]}" : string
  string.size > 4 ? string[0..-4].gsub(/\d/, "#") + string[-4..-1] : string
end
  

p maskify('4556364607935616') # should return '############5616'
p maskify('64607935616')      # should return '#######5616'
p maskify('1')                # should return '1'
p maskify('')                 # should return ''