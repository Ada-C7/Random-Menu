#Janice Lichtman's program for generating a random menu from a user-defined list of options


#Asks the user for the number of descriptors they want to include, and takes user input for those descriptors. Then does the same for  cooking-styles and foods.

puts "This handy program will help you create a personalized menu based on the cooking descriptors (hard, soft, cold, etc), cooking styles (boiled, fried, etc), and foods you provide.\n First, how many cooking descriptors do you want to include?"
descriptors_number = gets.chomp.to_i

descriptors = []

(0...descriptors_number).each do |n|
  puts "What is descriptor ##{n+1}?"
  new_descriptor = gets.chomp
  descriptors[n] = new_descriptor
end


puts "Great. Now, how many cooking styles can you use?"
cook_styles_number = gets.chomp.to_i

cook_styles = []

(0...cook_styles_number).each do |n|
  puts "What is cooking style ##{n+1}?"
  new_cook_style = gets.chomp
  cook_styles[n] = new_cook_style
end

puts "Great. Now tell me how many foods you have available."
foods_number = gets.chomp.to_i

foods = []

(0...foods_number).each do |n|
  puts "What is food ##{n+1}?"
  new_food = gets.chomp
  foods[n] = new_food
end


#Asks the user how many items to include on the menu

puts "Thank you. How many items would you like on your menu? (To avoid repetion, please choose a number less than or equal to the smallest of the three lists you enetered above.)"
menu_number = gets.chomp.to_i

# Chooses the descriptors, cooking-styles, and foods to be used in the menu

random_descriptors = descriptors.sample(menu_number)
random_cook_styles = cook_styles.sample(menu_number)
random_foods = foods.sample(menu_number)


puts random_descriptors
puts random_cook_styles
puts random_foods


#Creates the menu items, using the descriptors, cooking-styles, and foods chosen above

puts "OK, here is the delicious menu we've created out of your options:\n"

menu_number.times do |n|
  puts "Item ##{n+1}: #{random_descriptors[n]}-#{random_cook_styles[n]}-#{random_foods[n]}"
end
