# prompts user for all three parts of the dish name:
# adjective, method, and food
welcome_message = "Welcome to the random menu generator. \n" +
                  "Using your inputs, this program will create 10 dishes " +
                  "and display the number of dishes of your liking. " +
                  "Let's start with your inputs."
adj = []
# getting user input for adjectives
puts welcome_message
print "give me 10 adjectives:"
adj_input = gets.chomp
adj << adj_input

while adj.count < 10
  puts "keep going"
  adj_input = gets.chomp
  adj << adj_input
end

method = []
#getting user input for cooking methods
print "great, now onto cooking methods, give me 10:"
method_input = gets.chomp
method << method_input

while method.count < 10
  puts "keep going"
  method_input = gets.chomp
  method << method_input
end

food = []
# get user input for food

print "give me 10 foods:"
food_input = gets.chomp
food << food_input

while food.count < 10
  puts "keep going"
  food_input = gets.chomp
  food << food_input
end

# create hash to store dish list
# create empty hash to store dish_list and index number
# in order to display it later
dish_list = []
dish_list_with_number = []

# randomly selet index from previous arrays and create 10 dishes
# push dishes into the dish_list hash
10.times do |dish|
  dish = adj[rand(0..9)] + " " + method[rand(0..9)] + " " + food[rand(0..9)]
  dish_list.push(dish)
end

#display the dish hash with its index
dish_list.each_with_index do |dish, index|
  # puts "#{index + 1}. #{dish}"
  dish_list_with_number << "#{index + 1}. #{dish}"
end

# prompts user for how many dishes displayed
puts "How many dishes would you like to see?"
user_input = gets.chomp.to_i
until user_input > 0 && user_input <= 10
  puts "not a valid selection, choose between 1 and 10"
  user_input = gets.chomp.to_i
end

puts dish_list_with_number[0...user_input]
