#Gets how many menu number user wants
puts "\nWelcome hungry traveler!"
print "How many menu items would you like to see? "
menu_number = gets.chomp.to_i

#prompts user to enter number between 1 & 10
until menu_number > 0 && menu_number <= 10
  puts "We have up to 10 options."
  print "How many of our 10 menu options would you like to see? 1 - 10? "
  menu_number = gets.chomp.to_i
end

puts "\nWonderful!  I will show you #{menu_number} item(s), but I'll need your help!\n\n"

#creates arrays of foods, preps and types
adjectives = []
styles = []
foods = []

#gets adjectives, preparation styles and
#foods from user and saves in arrays
print "Please enter an adjective: "
adjectives << gets.chomp.capitalize
(menu_number - 1).times do
  print "And another: "
  adjectives << gets.chomp.capitalize
end

print "Please enter a method of food preparation, past tense (i.e. grilled): "
styles << gets.chomp.capitalize
(menu_number - 1).times do
  print "And another: "
  styles << gets.chomp.capitalize
end

print "Finally, please enter a type of food: "
foods << gets.chomp.capitalize
(menu_number - 1).times do
  print "And another: "
  foods << gets.chomp.capitalize
end

puts "\n\nHere is your menu for this evening: \n\n"
#creates and prints random menu items
menu_number.times do |number|
  styles = styles.shuffle
  adjectives = adjectives.shuffle
  foods = foods.shuffle
  puts "#{number + 1}. #{adjectives.pop} #{styles.pop} #{foods.pop}"
end

puts "\n Bon Appetit!\n\n"
