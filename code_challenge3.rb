favorite_movies = ["Birdy", "Rosie", "Josey", "Hello World", "Today", "Kale", "Puck", "Light House", "Lucy", "Bed"]

def my_movies(favorite_movies)
  favorite_movies.each do |movie|
    "#{movie} is one of my favorite movies!"
  end 
end
puts my_movies(favorite_movies)

def return1(favorite_movies)
  return favorite_movies.length
end
puts return1(favorite_movies)

def return2(favorite_movies)
  return favorite_movies[0]
end
puts return2(favorite_movies)

def return3(favorite_movies)
  return favorite_movies.last
end 
puts return3(favorite_movies)

def music_hash(favorite_movies)
favorite_music = {
  "Bulletproof" => "Avil Levine",
  "Cheerleader" => "Omi",
  "Bad Romance" => "Lady Gaga",
  "Domino"  =>   "Jessie J",
  "Living on a Prayer" => "Bon Jovi"
   }
  favorite_music.each do |song, artist|
    puts "I love #{song} by #{artist}!"
  end
  return favorite_music.length
end 

puts music_hash(favorite_movies)

