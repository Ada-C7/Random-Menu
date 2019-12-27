# prompts user to input number of menu items they want (x)
print "How many menu items would you like to see? "
num = gets.chomp.to_i

adjectives = []
cooking_styles = []
foods = []

# prompts user to input x number of adjectives
puts "\nPlease input #{num} adjectives: "
num.times do |x|
  print "#{x + 1}: "
  input = gets.chomp
  adjectives << input
end

# prompts user to input x number of cooking styles
puts "\nPlease input #{num} cooking styles: "
num.times do |x|
  print "#{x + 1}: "
  input = gets.chomp
  cooking_styles << input
end

# prompts user to input x number of foods
puts "\nPlease input #{num} foods: "
num.times do |x|
  print "#{x + 1}: "
  input = gets.chomp
  foods << input
end

# shuffles the array each time the code is run
adjectives.shuffle!
cooking_styles.shuffle!
foods.shuffle!

# prints user's custom menu
puts "\nHere's Your Custom Menu: "
num.times do |x|
  menu_item = adjectives[x] + " " + cooking_styles[x] + " " + foods[x]
  puts "#{x + 1}. #{menu_item}"
end
