# Initializing variables
adjectives = []
cooking_style = []
ingredients = []
menu_item_array =[]

# Accepting user inputs to generate adjectives, cooking_style, and ingredients arrays
loop_break = "hi"
until loop_break == "exit"
  print "Hi, enter your favorite food type \"soft, hard,spicy,creamy,..etc\" > "
  adjectives_user_input = gets.chomp
  adjectives.push(adjectives_user_input)

  print "Enter your favorite cooking style \" pan-fried, steamed, grilled,..etc\" > "
  cooking_style_input = gets.chomp
  cooking_style.push(cooking_style_input)

  print "Enter your favorite ingredients \"meat, fish, eggpalnt,mashroom,..etc\" > "
  ingredients_input = gets.chomp
  ingredients.push(ingredients_input)

  print "if you are done, please type exit   > "
  loop_break = gets.chomp

end

# Random numbers range
a = 0
b = adjectives.length - 1

# Generating random menu based on how many items that user would like to see
print "How many items would you like to see: "
number_of_items = gets.chomp!.to_i

number_of_items.times do |i|
  menu_item = adjectives[rand(a..b)] + " " + cooking_style[rand(a..b)] + " " + ingredients[rand(a..b)]
  # Ensuring of not having duplicate item descriptions
  while menu_item_array.include?(menu_item)
    menu_item = adjectives[rand(a..b)] + " " + cooking_style[rand(a..b)] + " " + ingredients[rand(a..b)]
  end
  # Printing the random menu
  menu_item_array.push(menu_item)
  puts "#{i+1}. #{menu_item_array[i]}"
end
