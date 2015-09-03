user = {
  :username => "lana_morgan",    #username, email and password = attributes of a class 
  :email => "alana.ramiji@flatironschoool.com",
  :password => "password123"
  }



class User
  
  def initialize #this method MUST be called initialize; when User.new is called, initialize is called; if this method is not here, don't worry about it - the computer doesn't need it; this method is only called ONCE when the user.new is called.  Otherwise, when I want to change @password I would do user.password = "something" and that would call the writer method (not the initialize method) and it would change @passowrd equal to whatever I set it equal to  
    #as soon as I call User.new, the initialize method runs (if you have one)
    @password = "password123"
  end 
  
  #this is a reader method - allows you to find out the info stored there
  def username #for each attribute of a class you have two methods a reader and a writer method (same as a gettter and setter methods)
    return @username #the variable "@username" is ONLY created when the WRITER, NOT the reader is called; it's created when lana.username - "lana" is called ; if the reader is called and the variable is not in the initialize method and the writer method has not been called the program will give you an error; the @symbol is called an instance variable
  end 
  
  #this is a writer method - allows you to change the info stored
  def username=(user)  #method name is username= and it takes on the user parameter and sets it equals to the username variable 
    @username = user
  end 
  
  def email 
    return @email
  end 
  def email=(email)
    @email = email
  end 
  
  def password
    return @password
  end
  def password=(password)
    @password = password
  end
  
end 

#making an instance of the User class and storing it within variable lana 
lana = User.new   #use uppercase because it's a constant - I don't want it to change; it doesn't really matter and you can use a lowercase lana
#sets @username equal to something

puts lana.username  #lana.username is a variable
lana.username = "lana" #looking for a method called username= ; this line is the same as writing lana.username=("lana")
puts lana.username
lana.email = "lana@gmail.com"
puts lana.email
lana.password = "mycode"
puts lana.password 

jessica = User.new
puts jessica.username = "jessica frank" #dictates what the username is going to be - calls writer method
puts jessica.username #asks what is stored in username - calls reader method 

#all of the users have the same attributes - have username, email and password even though the values for those instance variables may be different

puts jessica.password
puts lana.password
  
