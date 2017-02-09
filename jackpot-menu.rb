# BASELINE

# Come up with the three arrays of ten items each. Each list should be a different type of food or descriptor for that food.

# For example, the first array can contain adjectives, the second, cooking styles and the third, foods. If this was the array selection, it could create a few items like:

adjectives = ["ambiguous", "auspicious", "abrasive", "abhorrent", "acrid", "adhoc", "axiomatic", "able", "ablaze", "abandoned"]

preparations = ["baked", "coddled", "blackened", "blanched", "charbroiled", "braised", "brined", "broiled", "candied", "caramelized"]

foods = ["grits", "biscuits", "ribs", "corn bread", "hush puppies", "spoonbread", "peach cobbler", "banana pudding", "fried chicken", "chit\'lings"]

# PRIMARY REQUIREMENTS

# Create a random menu generator that can be played from the Terminal.

# Your generator should pull one item from each array you made in the baseline requirements to create a "menu item".

# When the program runs, it should create and show a list of ten numbered menu items.

10.times do | dish |

  puts "#{dish + 1}. #{adjectives.sample} #{preparations.sample} #{foods.sample}"
end

puts "\n"

# TEST & VERIFY

# ✓ The menu items are selected randomly.
# ✓ There are 10 menu items.
# ✓ Each item should pull one word from each of the 3 arrays.
# ✓ The items are numbers 1-10 (not starting at zero).
# ✓ Run the program a few times and ensure that the last word in the arrays are used.
# ✓ ensure that the first word in the arrays are used at least occasionally.

# OPTIONAL ENHANCEMENTS

# Expand your solution to ensure that no descriptive term in a menu item is ever repeated. So if the first menu item is hot pan-fried dumplings, the the phrases hot, pan-friend and dumpling cannot individually be used in any other menu items.

used_adjectives = Array.new
used_preparations = Array.new
used_foods = Array.new

10.times do | dish |

  adjective = adjectives.sample
  while used_adjectives.include?(adjective)
      adjective = adjectives.sample
  end

  used_adjectives << adjective

  preparation = preparations.sample
  while used_preparations.include?(preparation)
      preparation = preparations.sample
  end

  used_preparations << preparation

  food = foods.sample
  while used_foods.include?(food)
      food = foods.sample
  end
  used_foods << food

  food_item = adjective + " " + preparation + " " + food
  puts "#{dish + 1}. #{food_item}"

end

puts "\n"

# Expand your solution to allow the user to determine how many items they'd like to see via user input. Note: You will need to ensure that this user-chosen number of items is not larger than the number of items you have in your arrays.

print "How many food items would you like to see? (1 - 10) "
number = gets.chomp.to_i

while number > 10 || number < 1
  print "Uhm. 1 - 10. Try again: "
  number = gets.chomp.to_i
end

puts "\n"
used_adjectives = Array.new
used_preparations = Array.new
used_foods = Array.new

number.times do | dish |

  adjective = adjectives.sample
  while used_adjectives.include?(adjective)
      adjective = adjectives.sample
  end

  used_adjectives << adjective

  preparation = preparations.sample
  while used_preparations.include?(preparation)
      preparation = preparations.sample
  end

  used_preparations << preparation

  food = foods.sample
  while used_foods.include?(food)
      food = foods.sample
  end
  used_foods << food

  food_item = adjective + " " + preparation + " " + food
  puts "#{dish + 1}. #{food_item}"

end

puts "\n"

# Instead of using hardcoded or predefined arrays, make your program accept user input. This user input will be utilized to generate the menu items. You'll need to prompt for and store a varying number of entries for each food-type array.

adjectives = []

preparations = []

foods = []

print "How many food items would you like to create? (Limited to 5): "
food_item_number = gets.chomp.to_i

while food_item_number > 5 || food_item_number < 1
  print "Uhm. 1 - 5. Try again: "
  food_item_number = gets.chomp.to_i
end

puts "\n"

food_item_number.times do | adjective |
  print "Give me Adjective ##{adjective + 1} to describe your food item: "
  adjectives << gets.chomp.downcase
end

puts "\n"


food_item_number.times do | preparation |
    print "Give me Preparation ##{preparation + 1} to describe how your food was cooked: "
    preparations << gets.chomp.downcase
end

puts "\n"


food_item_number.times do | food |
    print "Give me Food ##{food + 1} to describe what the food item is: "
    foods << gets.chomp.downcase
end

puts "\n"

used_adjectives = Array.new
used_preparations = Array.new
used_foods = Array.new

number.times do | dish |

  adjective = adjectives.sample
  while used_adjectives.include?(adjective)
      adjective = adjectives.sample
  end

  used_adjectives << adjective

  preparation = preparations.sample
  while used_preparations.include?(preparation)
      preparation = preparations.sample
  end

  used_preparations << preparation

  food = foods.sample
  while used_foods.include?(food)
      food = foods.sample
  end
  used_foods << food

  food_item = adjective + " " + preparation + " " + food
  puts "#{dish + 1}. #{food_item}"

end

puts "\n"
