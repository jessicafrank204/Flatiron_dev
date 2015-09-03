def ceasar_encrypt(key, phrase)
  alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x",     "y", "z"]
 
  new_phrase = []
  
  phrase.downcase!
  split_phrase = phrase.split("") #splitting the string phrase by "" (by nothing) so I'm splitting the string phrase so that each letter becomes it's own string in the same array (phrase used to be a string, now phrase is an array that contains strings)  
  key = key%26 #If the user inputs a key of 5000, I don't want the code to run through the alphabet a ton of times; if the key is 30, I'm going to run through the alphabet once and I have 4 left over - I don't want to count going through the alphabet one full time because going through the full alphabet will give me the same letter; by doing this, the highest key I can get is 25 which makes sense because the keys in my alphabet array are 0-25 and I want to count just the remainder of dividing by 26; going around a full 26 is useless because that if just going around in a circle so I want to just count the remainder left over by diving by 26 because that is how much the key is actually changing by (going around a full 26 will just give you the same letter)
  
  split_phrase.each do |letter|   #to each of those strings in the array phrase, I am taking in the value (the letter) as the variable "letter" and am doing the following to it
    index = alphabet.index(letter)  #finding the index in the array alphabet which is linked to the given letter
    if index+key < 26 
      new_index = index+key
      new_letter = alphabet[new_index]  #finding the letter at the index three down from the given letter
      new_phrase.push(new_letter)
    else
      new_index = (index+key)-26 #I am finding how much over 25 the key is; I am finding how many spaces over 25 the key is and then I am taking the amount over the key is and going back to the beginning; if I'm at position 24, letter y and index+key is 28, then I am 2 over the end of the alphabet array and I am assigning 2 to be my new_index so then when I find the letter in the array at position 2, I am finding letter c; I am finding how much over the alphabet array I am and taking that number and going back to the beginning and counting from the beginning of the array again
      new_letter = alphabet[new_index]  #finding the letter at the index three down from the given letter
      new_phrase.push(new_letter)
    end 
  end
  final = new_phrase.join("")  #joining the array of strings back into one string 
  return final
end 
    

puts ceasar_encrypt(13, "JIMMMMM")