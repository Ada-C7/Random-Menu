# Declare menu items
array_adjective = [ "Hot",
  "Cold",
  "Spicy",
  "Soft",
  "Hard",
  "Salty",
  "Sweet",
  "Creamy",
  "Crunchy",
  "Milky"
]

array_style = [ "Steamed",
  "Pan-fried",
  "Sauteed",
  "Sezchuan",
  "Curried",
  "Teriyaki",
  "Tandoori",
  "Chopped",
  "Seasoned",
  "Roasted"
]

array_food = [ "Tofu",
  "Seitan",
  "Potatoes",
  "Bread",
  "Beans",
  "Rice",
  "Eggplant",
  "Mushroom",
  "Noodles",
  "Peppers"
]

# Request and receive user input for number of items
print "Welcome to Sahana's Crazy Menu!\nHow many items would you like to peruse? We have 10 items. "
user_input = gets.to_i

# Verify user input
# Generate random Menu
# Delete items from arrays so they cannot be used again
if user_input <= 10
  user_input.times { |n|
    puts "#{ n + 1 }. #{adjective = array_adjective.sample} #{style = array_style.sample} #{food = array_food.sample}"
    array_adjective = array_adjective - [adjective]
    array_style = array_style - [style]
    array_food = array_food - [food]
  }
else
  puts "Sorry, we don't have that many items. Please choose between 1-10."
end
