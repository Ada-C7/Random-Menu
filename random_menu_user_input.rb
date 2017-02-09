


adjectives = []
cook_type = []
ingredients = []

#prompt user for number of menu items to output
puts "How many menu items would you like to see? (1-10)"
item_number = gets.chomp.to_i

#error contol for invalid user unput
no_number = true
while no_number

  #get user input to create menu items

  if item_number > 0 && item_number <= 10
    puts "Please enter your top #{item_number} favorite foods."
    item_number.times do |n|
      print "#{n + 1}:"
      ingredients << gets.chomp.downcase
    end
    puts "How do you like those cooked? (baked, fried, etc.)"
    item_number.times do |n|
      print "#{n + 1}:"
      cook_type << gets.chomp.downcase
    end
    puts "How do you like those served?(rare, dry, juicy, crispy, etc)"
    item_number.times do |n|
      print "#{n + 1}:"
      adjectives << gets.chomp.capitalize
    end

    puts "Ok great, here are your #{item_number} items!"

    #begin outputting menu items
    item_number.times do |n|
      #get one item from each array to make menu item
      adj =  adjectives.sample
      cook = cook_type.sample
      ingr = ingredients.sample
      #output one menu item
      puts "#{n+1}. #{adj} #{cook} #{ingr}"
      #remove used items from array
      adjectives.delete(adj)
      cook_type.delete(cook)
      ingredients.delete(ingr)
    end
    no_number = false
    #prompt user to enter valid number
  else puts "please enter a valid number"
    item_number = gets.chomp.to_i
  end
end
