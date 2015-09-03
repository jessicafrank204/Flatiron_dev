class Integer
  def initialize
  end
  
  def peanuts
    #self = self * 2   #can't change the value of self permanently
    self * 2   #returns the value of self doubled but doesn't actually change the value of self
  end 
  
end 

#adding onto the Integer class

puts 4.peanuts

#will call peanuts method because 4 is part of the class Integer
#b = Integer.new  #you can't use the .new method for integers because the code doesn't want people to be able to assign anything equal to an integer.new - you could have bob = Integer.new and you would also have to determine which number the integer is - is it 4 or 7; when I say x = 4; I'm automatically calling the Integer.new to create 4
puts b
