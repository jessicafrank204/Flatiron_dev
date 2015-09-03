class Minion
  
  @@count = 0 #don't need a writer and reader for class variables ?????????????? - you don't need a writer or reader for any variable - it depends on what the variable is used for; for the @@count I don't need a writer - I don't want to be able to change it but in the initialize method I could set @@count = @@count+1 which means that I am adding one to count every time I create a new Minion but I don't want to be able to change @@count anywhere else besides adding one to it when I create another Minion in the initialize method 
  
  def initialize(name, number_of_eyes=2)   #this initialize method is optional but common; this is the thing you must set up as soon as a new instance is created - you don't want a minion running around without a name so as soon as you create a minion (an instance of this class), the first thing you must do is set his name by passing it as an argument to this initialize method
    #you can change these later with the writer method
    #purpose of the initialize method is to set certain attributes right away - as soon as the minion is created, it must have a name; ex user on facebook - at beginning, you must set username, password and can change them later but to set up an account you must set up the username and password
    @clothing = "overalls"
    @color = "yellow"
    @name = name
    @number_of_eyes = number_of_eyes #if we enter a value for the number of eyes, it will take the parameter but otherwise, it will take the default value for the number_of_eyes, which is 2
    #@@count = @@count + 1
    puts "@@count = #{@@count}"
  end 
  
  def clothing
    @clothing
  end 
  def clothing=(clothes)
    @clothing = clothes
  end 
  
  def color
    @color
  end
  def color=(color)
    @color = color #instance variable set equal to the parameter
  end 
  
  def name
    @name
  end
  def name=(name)
    @name = name
  end
  
  def number_of_eyes  #instance method(without other insturctions, the default is to have an instance method) - methods whose result depend on which instance you call it on - bob has different number of eyes than kevin
    @number_of_eyes
  end
  def number_of_eyes=(num)
    @number_of_eyes = num
  end 
  
  def Minion.count #doesn't need to have a parameter because @@count is a class variable and is accessible throughout the class
    @@count
  end
  #I've made count a class method - means it is not accessible through a specific instance of a class - I would put Minion.count to run this method and return count. I would NOT write bob.count ; the count method is not specific for any one instance variable and it would NOT return different values if I called it on different instance variables
  
  def count=(num)
    @@count = num
  end 
  
end 

bob = Minion.new("jimmy", 15)
# puts bob.name
# puts bob.number_of_eyes
# puts bob.clothing
# puts bob.color

puts bob.count
bob.count = 4
puts bob.count

steve = Minion.new("steve", 4352) #minion.new = class method - call with name of the class not with the name of an instance
#use class method if it doesn't change depending on what object you call it on; the number of minions (@@count)
#username - result changes if call it on different instances 
#use instance variables and/or class variables in instance method; use class variables, not instance variables in class method
#only refernce class variables, not instance variables in a class method - class method calling on whole class and if call instance variable inside of it, you don't know which object's instance variable you're referencing 
puts "Steve #{steve.count}"