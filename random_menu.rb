#3 arrays with different food adjectives, cooking style, and types

food_adjectives = ["hot", "soft", "small", "soggy", "watery", "crispy", "burnt", "slimey", "creamy", "greasy"]
cooking_styles = ["steamed", "grilled", "baked", "roasted", "boiled", "fried", "barbequed", "microwaved", "stir-fried", "poached"]
different_foods = ["chicken", "steak", "salmon", "dumplings", "pizza", "tacos", "sandwiches", "pasta", "cake", "tofu"]

#index so that it'll print a new number within loop
index = 1

puts "\nHere is your specialized menu.\n\n"
#running through the number of elements in food_adjectives array
10.times do
  #used string interpolation to print menu
  puts "#{index}. #{food_adjectives.delete_at(rand(food_adjectives.length))} #{cooking_styles.delete_at(rand(cooking_styles.length))} #{different_foods.delete_at(rand(different_foods.length))}"
  index += 1
end
