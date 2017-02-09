# Random menu generator

# Come up with the three arrays of ten items each. Each list should be a different type of food or descriptor for that food.

# For example, the first array can contain adjectives, the second, cooking styles and the third, foods. If this was the array selection, it could create a few items like: hot pan-fried dumplings, soft steamed clams

# BASIC VERSION: create pools of adjective, cooking style, and food words
# adjectives = ["hot", "cold", "slimy", "lukewarm", "breaded", "sweet", "fragrant", "dry", "cheesy", "crunchy"]

# cooking_style = ["deep-fried", "braised", "boiled", "fire-roasted", "frosted", "blackened", "tossed", "stuffed crust", "baked", "melted"]

# foods = ["macaroni & cheese", "soup", "steak frites", "buttery rolls", "fajitas", "sushi", "quinoa patties", "ravioli", "muffin", "pie"]

# creates empty menu array and variable to contain number of menu items
menu = []
items_num = 0

# Eallow the user to determine how many items they'd like to see via user input.
until items_num <= 10 && items_num > 0
print "Welcome to your first day as Chef de Cuisine at Chez Denny's! How many menu items are you thinking for tonight's menu? "
items_num = gets.chomp.to_i
end

# make your program accept user input. This user input will be utilized to generate the menu items.
adjectives = []
cooking_style = []
foods = []

# requests user to enter adjectives, cooking styles, and foods
puts "Alright then, what are our menu options?"
items_num.times do |input|
  print "Enter an adjective: "
  adjectives << gets.chomp
  print "Now, enter a style of cooking: "
  cooking_style << gets.chomp
  print "Finally, enter a kind of food: "
  foods << gets.chomp

end

# testing
# puts adjectives
# puts cooking_style
# puts foods

puts "With your wise guidance we have created an amazing menu worthy of the Chez Denny's name!!"

# fills the menu array with random samples from each word array
items_num.times do |item|
  adj = adjectives.sample
  cook = cooking_style.sample
  food = foods.sample

# adds random menu item to menu array
  menu << "#{item + 1}: #{adj} #{cook} #{food}"

# ensure that no descriptive term in a menu item is ever repeated.
  adjectives.delete(adj)
  cooking_style.delete(cook)
  foods.delete(food)
end

puts menu
