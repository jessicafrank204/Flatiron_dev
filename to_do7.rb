class Raccoon
  attr_accessor :name, :age, :has_puma_bff, :puma_points
  def initialize(name, age)
    @name = name
    @age = age
    @has_puma_bff = true 
    @puma_points = 0
  end 
  def talk_to_bff
    puts "I love you puma bff"
  end 
  def give_raccoon_points(puma)
    puma.raccoon_points = puma.raccoon_points+1
  end 
end 

class Puma 
  attr_accessor :name, :age, :has_raccoon_bff, :raccoon_points
  def initialize(name, age)
    @name = name
    @age = age
    @has_raccoon_bff = true
    @raccoon_points = 0
  end
  def talk_to_bff
    puts "I love you raccoon bff"
  end
  def give_puma_points(raccoon)
    raccoon.puma_points = raccoon.puma_points+1  #accessing raccon's writer method for puma_points
  end 
  def drop_raccoon_bestie(raccoon)
    raccoon.has_raccoon_bff = false
  end  
end 

raccoon1 = Raccoon.new("joe", 42)
puma1 = Puma.new("bob", 23)
puma1.give_puma_points(raccoon1)
puma1.give_puma_points(raccoon1)
puts raccoon1.puma_points
  
  
  