farmer_tasks = ["Milk the cow", "Churn the butter", "Drive the tractor", "Peel potatoes", "Plant the corn"]
#.each - goes through each position in the array
farmer_tasks.each
puts "I'm so busy.  I need to #{farmer_tasks.each {|tasks|}}"
