class User #call class singlular because for each instance, you're only making one User
  attr_accessor :name, :email, :num_friends, :friends, :photos #reader and writer for these attributes
  attr_writer :password #writer for password attribute
  attr_reader :url #reader for url attribute
 
  def initialize(name, email, password, url)
    @name = name
    @email = email
    @password = password
    @url = url
    @statuses = []
    @photos = []
    @friends = []
    @num_friends = 0
  end
 
  def update_status(new_status)
    @statuses << new_status
  end
 
  def upload_photo(new_photo)
    @photos.push(new_photo)
  end   #nil - no value there; 0 - there is a value but the value is zero
 
  def add_friend(new_friend)
    @num_friends += 1          #same as @num_friends = @num_friends + 1
    @friends.push(new_friend)
  end
 
  def wall
    puts "Here is #{@name}'s wall:"
    #puts "#{@name} has #{@num_friends} friend(s)."
    #ternary conditional - one line conditional    
    puts "#{@name} has #{@num_friends} #{@num_friends == 1 ? "friend" : "friends"}" #if the @num_friends is 1 then return friend, else (else is shown by the :) return friends 
    
    
    puts "STATUSES:"
    @statuses.each do |status| #can't write a puts infront of a .each method - then you a puts inside of a puts 
      puts status
    end
    puts "PHOTOS:"
     @photos.each do |photo|
      puts photo
    end
  end
end 

aj = User.new("AJ", "kittens4life@gmail.com", "skittles123", "aj-friendly")
aj.email = "aj@gmail.com"
aj.update_status("what up facebook!")
 
  ben = User.new("Ben", "b@en.com", "password1", "joe")
 
aj.add_friend("ben")
aj.upload_photo("<picture of> kittenz on fleek<3")
aj.wall
