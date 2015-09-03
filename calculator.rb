puts "Enter your first number"
num1= gets.chomp.to_f
puts "Enter your operation"
operation = gets.chomp
puts "Enter your second number"
num2 = gets.chomp.to_f
answer = 0

  def addition(num1, num2)
    return num1 + num2
    #num1 = answer
  end 

  def subtraction(num1, num2)
    return num1 - num2
  end 

  def multiplication(num1, num2)
    #answer = num1 * num2  #any changes made to the variables within the method definition is local and cannot be seen outside of the method definition so I'm not changing the value of answer at the top of the program
    #num1 = answer
    return num1 * num2
  end 

  def division(num1, num2)
    return num1 / num2
    #num1 = answer
  end 
  
while operation != "=" do

  if operation == "+"
    #puts "before #{num1} #{num2} #{answer}"
    answer = addition(num1, num2)  #within the while loop, changing the values of answer and num1 changes the values of answer and num1 at the top of the program - that's good bc when I pass the variables to the methods, the num1 and answer variables maintain their values assigned in here, in the while loop bc the variables' values (num1 and answer are defined at the top of the program) were reassigned here in the while loop
    num1 = answer
    #puts "after #{num1} #{num2} #{answer}"
    
  elsif operation == "-"
    answer = subtraction(num1, num2)
    num1 = answer 
  elsif operation == "/"
    answer = division(num1, num2)
    num1 = answer
  elsif operation == "*"
    answer = multiplication(num1, num2)
    num1 = answer
  else
    puts "Please enter +, -, / or *"
  end 
  
  puts "Enter your operation"
  #if gets.chomp == "=" || gets.chomp == "+" || gets.chomp == "-" || gets.chomp == "/" || gets.chomp == "*"  
      operation = gets.chomp
  #else 
   # puts "Error: enter =, +, -, / or *"
    #break
  #end 
  
  if operation != "="
  puts "Enter a number"
#     if gets.chomp.include?(/\D/)
#       puts "Error: enter a number next time"
#       break 
#     else 
      num2 = gets.chomp.to_f
#     end 
  else 
    puts "Your answer is #{answer}"
   break
  
end
end 

