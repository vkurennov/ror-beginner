puts  "Enter string"
str = gets.chomp
puts "Enter method"
method = gets.chomp.to_sym
puts str.send(method)