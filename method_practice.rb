def go_home(name, age)
  puts "get to the store"
  puts "go home"
end

go_home("Finn", 23)

def go_home1(name, age)        #command = a variable that can ONLY be used inside this method 
  puts command = "stand up"  #puts - puts something on a screen
  puts "walk out the door #{name} who is #{age} years old"  #puts returns nothing (nil)
end

go_home("Finn", 23) 

def find_sum(value1, value2)     
  return value1+value2  #return - returns the value back to the point where you called the method
end 

#puts find_sum(3,9)   #saying when you get the number returned/when you get the number back from the value1+value2, then you put the number on the screen (this putting the number on the screen is done by puts)

sum= find_sum(3,9)  #sum is not a global variable - a global variable can be used in any method without being passed as a parameter; sum is local - everything in ruby, unless specifically indicated is local.  sum can be passed as a parameter to another function.  If sum was declared WITHIN the find_sum method, then sum could NOT be passed as a parameter to go_home method.  If go_home was INSIDE of the find_sum method, then sum COULD be passed as a parameter to go_home