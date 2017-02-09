
#computer-generated menu items
computer_array = [
  ["spooky", "tiny", "restrained", "glittery", "sharp", "bitter", "hyper-local", "hairy", "blue", "pointy"],
  ["pulverized", "baked", "mashed", "fried", "steamed", "boiled", "broiled", "deep-fried", "squished", "pan-seared"],
  ["salmon", "toast", "linguine", "chicken", "tacos", "beets", "broccoli", "dumplings", "teriyaki", "smoothie"]
]

print "\nWelcome to the Random Food Cafe!\n"

#find out how many menu items to print
item_count = 0
until item_count.between?(1,10) do
print "How many random food combos would you like to make? (10 max): "
item_count = gets.chomp.to_i
  if item_count > 10
    print "That's too many! Please enter a smaller number between 1 and 10.\n"
  elsif item_count < 1
    print "That's not enough! Please enter a number between 1 and 10\n"
  end
end

#find out if user wants to create own menu items
print "Would you like to create your own menu items? (yes/no): "
user_menu = gets.chomp.downcase
until user_menu == "yes" || user_menu == "no" do
  print "Please enter \"yes\" or \"no\": "
  user_menu = gets.chomp.downcase
end

#generate the array for the menu -- either one based on user input or one already stored in the file
user_input = [[], [], []]
if user_menu == "yes"
  print "\nYou'll need to enter #{item_count} adjective(s) (e.g. fresh)\n"
  item_count.times do |adj|
    print "Please enter adjective ##{adj+1}: "
    user_input[0] << gets.chomp
  end
  print "\nNow you'll need to provide #{item_count} cooking method(s) (e.g. fried)\n"
  item_count.times do |cooking|
    print "Please enter cooking method ##{cooking+1}: "
    user_input[1] << gets.chomp
  end
  print "\nLast is #{item_count} food(s) (e.g. potatoes)\n"
  item_count.times do |food|
    print "Please enter food ##{food+1}: "
    user_input[2] << gets.chomp
  end
  menu = user_input
else
  menu = computer_array
end

#randomize the menu items
menu.length.times do |i|
  menu[i].shuffle!
end

#print the menu
puts "\nHere are you random food menu selections. Enjoy!\n"
item_count.times do |item|
  puts "#{item+1}. #{menu[0][item]} #{menu[1][item]} #{menu[2][item]}"
end
