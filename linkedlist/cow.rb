require_relative 'display_string'
debug = Debug.new

# Ruby uses COW (Copy On Write)
# Sample 1
str1 = "Lorem ipsum dolor sit amet, consectetur adipisicing elit"
str2 = str1
str1[2] = "M"

puts str1
puts str2

# Sample 2
# Sharing one string value between two String objects
str = "Lorem ipsum dolor sit amet, consectetur adipisicing elit"
str2 = str.dup

puts "str:"
debug.display_string str
puts
puts "str2:"
debug.display_string str2