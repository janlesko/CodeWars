# def domain_name(string)
#   if string.include?("//www.")
#     first_dot = string.chars.find { |char| char == '.' }
#     starts = string.index(first_dot) + 1
#     last_dot = string[starts..-1].chars.find { |char| char == '.' }
#     ends = string[starts..-1].index(last_dot)
#   else
#     first_slash = string.chars.find { |char| char == '/' }
#     starts = string.index(first_slash) + 2
#     last_dot = string[starts..-1].chars.find { |char| char == '.' }
#     ends = string[starts..-1].index(last_dot)
#   end
#   string[starts, ends]
# end

def domain_name(url)
  arr = url.split("//")[1].split(".")
  arr[0] == "www" ? arr[1] : arr [0]
end

p domain_name("http://github.com/carbonfive/raygun") == "github" 
p domain_name("http://www.zombie-bites.com") == "zombie-bites"
p domain_name("https://www.cnet.com") == "cnet"