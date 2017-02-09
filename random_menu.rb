foods = [
  "pizza",
  "chocolate chip cookies",
  "steak",
  "chicken",
  "sushi",
  "tacos",
  "pasta",
  "stew",
  "ice cream",
  "pie"
  ]

cooking_styles = [
  "pan-fried",
  "broiled",
  "woodfire",
  "deep-fried",
  "baked",
  "seared",
  "slow cooked",
  "BBQ",
  "grilled",
  "boiled"
  ]

descriptors = [
  "raw",
  "juicy",
  "gooey",
  "crispy",
  "chewy",
  "sweet",
  "savory",
  "sour",
  "parmesan crusted",
  "cheesy"
  ]


#This method prompts for and returns how many menu items the user would like printed 
def get_number_of_items()
  number_of_items = 0
    until number_of_items > 0 && number_of_items < 11
      print  "How many menu items would you like? (max 10): "
      number_of_items = gets.chomp.to_i
    end
    return number_of_items
end

# This method takes in 3 arrays, will iterate 10 times, and print out a menu with 10 randomly generated items
# There will be no repeats of food, descriptor, or cooking style
def create_menu(descriptors, cooking_styles, foods)
  number_of_items = get_number_of_items
  puts "Here is your menu:"
  puts "-" * 60
  number_of_items.times do |i|
    descriptor = descriptors.sample
    descriptors.delete(descriptor)
    cooking_style = cooking_styles.sample
    cooking_styles.delete(cooking_style)
    food = foods.sample
    foods.delete(food)
    puts "#{i + 1}: #{descriptor} #{cooking_style} #{food}"
  end
end
create_menu(descriptors, cooking_styles, foods)
