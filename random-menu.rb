# Prints a welcome message
puts "Welcome to my random menu generator! "

# Defines three arrays whose elements are foods or food descriptors
adjs = [
  "creamed",
  "warm",
  "spicy",
  "steamed",
  "seasoned",
  "barbecued",
  "chilled",
  "peppered",
  "baked",
  "steamed"
]

key_ingredients = [
  "panceta",
  "lentil",
  "strawberry",
  "shiitake",
  "jalapeno",
  "corn",
  "tofu",
  "chicken",
  "bacon",
  "lavender"
]

dishes = [
  "soup",
  "curry",
  "salad",
  "cake",
  "creme brulee",
  "meatloaf",
  "chili",
  "pizza",
  "sushi",
  "pancakes"
]

# Randomly rearranges the order of the elements in each array
adjs = adjs.shuffle
key_ingredients = key_ingredients.shuffle
dishes = dishes.shuffle

# Prompts the user to define the number of dishes, not allowing it to exceed 10
print "How many items would you like on your menu (max 10)? "
item_number = gets.chomp.to_i
if item_number > 10
  item_number = 10
end

# Prints the randomly generated menu for the user
puts "\nHere is your menu:"
item_number.times do |item|
  puts "#{item + 1}. #{adjs[item]} #{key_ingredients[item]} " +
       "#{dishes[item]}"
  # Generates a menu allowing items to be used more than once
  # puts "#{item + 1}. #{adjs[rand(0...item_number)]} " +
  # "#{key_ingredients[rand(0...item_number)]} " +
  # "#{dishes[rand(0...item_number)]}"
end
