line_num = 0
input = ""

loop do
  print "#{line_num += 1}?: "
  line = gets
  break if line.strip == 'exit' 
  
  if line.strip == ''
    puts "Evaluating..."
    puts eval(input)
    input = ""
  else
    input += line
  end
end