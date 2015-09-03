#how to create a hash
birthdays = {
  "Philly" => "7/25",
  "Matt" => "2/19",
  "Chris" => "2/19",
  "Charlie" => "5/19"
  }
##****OK for two different keys to have the same value*****
##****NOT ok for two of the same keys to exit with different values - can't have two of the same keys****

 birthdays 
# puts birthdays["Charlie"]  #prints out the data associated with key Charlie

#wrong
#puts birthdays{"Charlie"}

#to add something to a hash
birthdays["Haruka"] = "2/23"
puts birthdays[2]

 birthdays

#change the value of a key that is already in the hash
birthdays["Charlie"] = "8/5"   #same as adding something to a hash - will NOT make two keys called Charlie because a hash can never have two of the same keys

