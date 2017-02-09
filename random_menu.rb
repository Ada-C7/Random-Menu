adjective_array = ["delicious", "hot", "soft", "cold", "home-made", "crunchy", "savory", "spicy", "rich", "sweet"]
cooking_array = ["toasted", "steamed", "fried", "grilled", "sauteed", "seared", "seasoned", "boiled", "baked", "marinated"]
food_array = ["mushrooms", "fish", "burger", "salad", "clams", "eggplant", "cheese", "oysters", "dumplings", "rice"]

puts "Welcome to the random menu generator. The following are you choices:"

#outputs one random element from each array (but uses only one element once) and ties it together. This is done 10 times
10.times do
  puts "#{adjective_array.sample} #{cooking_array.sample} #{food_array.sample}"
end
