# generate a randomized list of adjectives from the user input
def get_random_adjectives(how_many_foods, array)
  random_adjectives = []
  until random_adjectives.length == how_many_foods
    random_adjective_num = rand(0..array.length-1) # get a random number for the adjective
    adjective = array[random_adjective_num]  # pick a random adjective
    while random_adjectives.include?(adjective)
      random_adjective_num = rand(0..array.length-1) # get a random number for the adjective
      adjective = array[random_adjective_num]
    end
    random_adjectives << adjective
  end
  return random_adjectives
end

# generate a randomized list of cooking styles from the user input
def get_random_cooking_styles(how_many_foods,array)
  random_cooking_styles = []
  until random_cooking_styles.length == how_many_foods
    random_cooking_style_num = rand(0..array.length-1) # get a random number for the cooking style
    cooking_style = array[random_cooking_style_num] # pick a random cooking style
    while random_cooking_styles.include?(cooking_style)
      random_cooking_style_num = rand(0..array.length-1) # get a random number for the cooking style
      cooking_style = array[random_cooking_style_num]
    end
    random_cooking_styles << cooking_style
  end
  return random_cooking_styles
end
# generate a randomized list of foods from the user input
def get_random_foods(how_many_foods, array)
  random_foods = []
  until random_foods.length == how_many_foods
    random_food_num = rand(0..array.length-1) # get a random number for the food
    food = array[random_food_num]
    while random_foods.include?(food)
      random_food_num = rand(0..array.length-1) # get a random number for the food
      food = array[random_food_num]
    end
    random_foods << food
  end
  return random_foods
end

# combine the randomized lists into gross random foods!
def print_big_food_list(how_many_foods, inputted_adjectives, inputted_cooking_styles, inputted_foods)
  random_adjectives_list = get_random_adjectives(how_many_foods, inputted_adjectives)
  random_cooking_styles_list = get_random_cooking_styles(how_many_foods, inputted_cooking_styles)
  random_foods_list = get_random_foods(how_many_foods, inputted_foods)
  gross_random_foods = []
  how_many_foods.times do |n|
    gross_random_food = "#{random_adjectives_list[n]} #{random_cooking_styles_list[n]} #{random_foods_list[n]}"
    gross_random_foods << gross_random_food
  end
  line = 1
  gross_random_foods.each do |food|
    puts "#{line}. #{food}"
    line += 1
  end
end

# inputs from the user will be stored here
inputted_adjectives = []
inputted_cooking_styles = []
inputted_foods = []

puts "\nHi there! Welcome to my random food generator!"
puts "\nYou will have the option to enter adjectives, cooking styles, and foods."
puts "Then you'll pick how many randomly generated foods you want."

# inputs are taken in as a string and split into an array
puts "\nPlease enter any number of adjectives, separated by a comma."
print ">> "
adjective_entry = gets.chomp.to_s.downcase
inputted_adjectives = adjective_entry.split(",").map { |word| word.lstrip }

puts "\nPlease enter any number of cooking styles, separated by a comma."
print ">> "
cooking_style_entry = gets.chomp.to_s.downcase
inputted_cooking_styles = cooking_style_entry.split(",").map { |word| word.lstrip }

puts "\nPlease enter any number of foods, separated by a comma."
print ">> "
food_entry = gets.chomp.to_s.downcase
inputted_foods = food_entry.split(",").map { |word| word.lstrip }

# determine the smallest list of words to limit the randomly generated list
shortest_array = [inputted_adjectives.length, inputted_cooking_styles.length, inputted_foods.length].min

# user picks how many randomly generated foods they want
print "\nHow many foods would you like me to generate? (up to #{shortest_array}): "
how_many_foods = gets.chomp.to_i
while how_many_foods > shortest_array && how_many_foods > 0
  print "Sorry, that's too many. How many foods? "
  how_many_foods = gets.chomp.to_i
end

# print the results!
puts "\n"
puts "Here's some gross food you won't want: \n\n"
result = print_big_food_list(how_many_foods, inputted_adjectives, inputted_cooking_styles, inputted_foods)
puts "\n"
