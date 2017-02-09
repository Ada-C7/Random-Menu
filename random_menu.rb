

# Create three arrays. One wiht adjectives, one with cooking-style and one with food.
adjectives = ["hot", "blend", "cold", "warm", "spicy",
  "sweet", "sweet & sour", "bitter", "creamy", "crunchy"]
cooking_style = ["cooked", "steamed", "grilled", "boiled", "seared",
  "baked", "pan-fried", "oil-fried", "simmering", "marinated"]
food = ["beef", "vegetables", "cookies", "lamb", "pasta",
  "chicken", "salmon", "shrimps", "clams", "dumplings"]

descriptive_terms = [adjectives, cooking_style, food]

# Input of how many items the menue will have
print "How many items would you like to see on the menue? "
number_of_items = gets.chomp.to_i
item_number = 0

# Printing out the items one by one
number_of_items.times do

  item_number += 1

  # Random pulled element from each of the arrays
  adj_choise = descriptive_terms[0].sample
  style_choise = descriptive_terms[1].sample
  food_choise = descriptive_terms[2].sample

  # Deletion of the pulled element
  descriptive_terms[0].delete(adj_choise)
  descriptive_terms[1].delete(style_choise)
  descriptive_terms[2].delete(food_choise)

  #Printout of the menue item
  puts "#{item_number}. #{adj_choise} #{style_choise} #{food_choise}"

end
