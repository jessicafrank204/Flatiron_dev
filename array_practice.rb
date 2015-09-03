#["password", "123456", "qwerty, "abcdefg", "Atiyah1"]  #this is an array - should assign it to a variable
bad_passwords = ["password", "123456", "qwerty", "abcdefg", "Atiyah1"]
bad_passwords
bad_passwords[2]

bad_passwords.push("109876") #adding a new item to the array at the end
bad_passwords << "109876"  #adding a new item to the array at the end - same as line 6
bad_passwords[5]

bad_passwords.insert(4,"hello")  #inserting "hello" into position 4 of the array
bad_passwords.insert(-2, "hello") #inserting "hello" into position 4 of the array - it's the same as above...if you count backwards from end of the array (the end positon of the array begin -1) then position 4 (counting forward from beginning of array, with the first spot as 0) are both in the same spot

bad_passwords[5] = "asdfghjkl"  #replacing whatever was in position 5 of the array to this new item

countries = ["Chad", "Cuba", "Greenland", "Iraq", "Mali", "Oman", "India"]
countries.push("Fiji")
countries.insert(4, "Iran")
countries.delete("India")
countries.reverse!
countries[2] = "Togo"
countries.push("Laos")
countries.reverse!
countries.insert(0, "Peru")
puts countries
string = "Jessica"
string.upcase!
string = string.upcase

