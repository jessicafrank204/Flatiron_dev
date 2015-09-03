class User
  
  attr_reader :url                     #shortcut for creating only a reader method  
  attr_writer :password              #these are instance variables still, NOT symbols         #shortcut for creating only a writer method
  attr_accessor :name, :email            #shortcut for both reader and writer method; creates reader and writer methods for listed variables
  
  def initialize(name, email, password, url)
    @name = name
    @email = email
    @password = password
    @url = url
  end 
  
  #   def name #reader              #because I have the shortcuts above, these are unnecessary
#     @name
#   end
#   def name=(name) #writer
#     @name = name
#   end 
  
end 