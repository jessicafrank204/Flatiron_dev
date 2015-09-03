puts "Enter your phone number"
number = gets.chomp
final_number = number.gsub(/\D/, "")
puts finished_number = final_number[0..2] + "-" + final_number[3..5] + "-" + final_number[6..9]
puts "(" + final_number[0..2] + ") " + final_number[3..5] + "-" + final_number[6..9]

if finished_number.match(/\d/)
  puts "Thanks for entering your phone number"
end
  