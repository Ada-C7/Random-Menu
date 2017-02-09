# Created by Theresa Manney on 2.8.17 for C7 Stacks HW
# Three arrays will be created in this program so they can be called
#  upon later to create a unique menu. This menu will change each time it
# is run.

# Three separate array variables
adjectives = ["spicy", "sour", "hot", "cold", "liquid",
      "solid", "fluffy", "soft", "stringy", "reddish"]
preparation = ["baked", "pan-fried", "microwaved", "barbecue",
      "sauteed", "smoked", "roasted", "fried", "toasted", "chilled"]
food = ["cookies", "chicken", "carrots", "fish", "sandwich",
      "ice cream", "cake", "chocolate", "salad", "pizza"]

# Welcome message to user
puts "Welcome! Enjoy from our 10 meal choices"

# Will print a list that includes adjective, preparation and food.
# The list will will print numbers 1-10 before printing all strings in
# necisary arrays
10.times do |num|
  puts "#{num + 1}. " + "#{adjectives.shuffle[num]} " +
  "#{preparation.shuffle[num]} " + "#{food.shuffle[num]}"
  num += 1
end
