#Creates 3 arrays
descriptor_1 = [
  "Bubbly",
  "Hot",
  "Cold",
  "Luke Warm",
  "Spotted",
  "Ethically Sourced",
  "Farm to Table",
  "Vegan",
  "Locally Grown",
  "Slippery"
]

descriptor_2 = [
  "Fried",
  "Charred",
  "Blacken",
  "Spicy",
  "Yellow",
  "Mild",
  "Pickled",
  "Hipster",
  "Baked",
  "Buttered"
]

food = [
  "Beans",
  "Cheese",
  "Bread",
  "Tofu",
  "Crab",
  "Salmon",
  "Soup",
  "Tomatoes",
  "Bacon",
  "Eggs"
]

#Creates line between command line and menu.
print "\n"

# Prints 10 random menu items.
for counter in 1..10
  puts "#{counter}. #{descriptor_1[rand(0..9)]} #{descriptor_2[rand(0..9)]} #{food[rand(0..9)]}"
end

#Alternative loop - Prints 10 random menu items.

# 10.times do |counter|
#   puts "#{counter}. #{descriptor_1[rand(0..9)]} #{descriptor_2[rand(0..9)]} #{food[rand(0..9)]}"
# end
