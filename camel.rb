# Complete the method/function so that it converts dash/underscore delimited 
# words into camel casing. The first word within the output should be capitalized 
# only if the original word was capitalized.

def to_camel_case(string)
  return " " if string.empty?
  array = string.split(/[-_]/)
  result = [array.first] + array[1..-1].map(&:capitalize)
  result.join
end

# returns "theStealthWarrior"
to_camel_case("the-stealth-warrior") 

# returns "TheStealthWarrior"
to_camel_case("The_Stealth_Warrior")