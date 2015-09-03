puts "What's your name"
name = gets.chomp #takes what the user inputs and assigns it to variable name
puts "#{name}, where do you live?"
place = gets.chomp
puts "What do you like to do in #{place}"
activity = gets.chomp

puts sentence = "Hi #{name}, who lives in #{place} and likes to #{activity}"
puts "Hello World".*14