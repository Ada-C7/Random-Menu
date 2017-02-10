#create arrays and fill food arrasy and create a hash to hold menu
description = [
  "hot",
  "sticky",
  "spicy",
  "savory",
  "flavorful",
  "ripe",
  "warm",
  "soft",
  "creamy",
  "salted"
]
style = [
  "flame broiled",
  "charred",
  "pan-roasted",
  "seared",
  "chopped",
  "grilled",
  "toasted",
  "sauteed",
  "steamed",
  "pan-fried"
]

dish = [
  "clams",
  "beef",
  "pork",
  "halibut",
  "asparagus",
  "corn",
  "salmon",
  "nuts",
  "sausage",
  "tuna"
]
menu = Hash.new

print "\n#     #                     ###           #######                  ######                                   ###### \n"
print "#  #  # #    #   ##   ##### ###  ####     #        ####  #####     #     # # #    # #    # ###### #####     #     # # #    # ###### #####  \n"
print "#  #  # #    #  #  #    #    #  #         #       #    # #    #    #     # # ##   # ##   # #      #    #    #     # # ##   # #      #    # \n"
print "#  #  # ###### #    #   #   #    ####     #####   #    # #    #    #     # # # #  # # #  # #####  #    #    #     # # # #  # #####  #    #\n"
print "#  #  # #    # ######   #            #    #       #    # #####     #     # # #  # # #  # # #      #####     #     # # #  # # #      #####\n"
print "#  #  # #    # #    #   #       #    #    #       #    # #   #     #     # # #   ## #   ## #      #   #     #     # # #   ## #      #   #  \n"
print " ## ##  #    # #    #   #        ####     #        ####  #    #    ######  # #    # #    # ###### #    #    ######  # #    # ###### #    #\n"



#Show description options
puts "\n\nLet's get a sense of what you\'re hungry for. Will you let us know how many of the flavors we've planned you're not in the mood for today? \n If they all look good, type 0. If there are a few you'd like to replace, just list them all separated by commas."

description.each_with_index do |item, number|
  place = number + 1
  puts "#{place}  #{item.to_s}"
end
#get user input:  replace any values they don't like
remove = gets.chomp

#move on or get user input for flavors
if remove == 0.to_s
  puts "Great! We're on the same page about flavors, let's see how you feel about our standard preparations!"
else
  
  #turn user input into an array
  replace = remove.split(",")
  
  #get user input to replace unwanted flavors
  replace.each do |item_number|
    array_location = item_number.to_i - 1
    puts "\nSo, what  would you prefer to #{description[array_location]}"
    flavor = gets.chomp
    description[array_location] = flavor
  end
end

#Show preparation options
puts "\nType the item numbers of any preparations you\'d like to change. Type 0 if you like what you see.\n"

style.each_with_index do |item, number|
  place = number + 1
  puts "#{place}  #{item.to_s}"
end
#get user input:  replace any values they don't like
remove = gets.chomp

#move on or get user input for preparations
if remove == 0.to_s
  puts "\nGreat! We're on the same page about preparation, let's see how you feel about our dishes!\n"
else
  replace = remove.split(",")
  
  #get user input to replace unwanted preparations
  replace.each do |item_number|
    array_location = item_number.to_i - 1
    puts "\nWhat preparation would you prefer to #{style[array_location]}?\n"
    flavor = gets.chomp
    style[array_location] = flavor
  end
end

#Show dish options
puts "\nType the item numbers of any dishes you\'d like to change. Type 0 if you like what you see.\n"

dish.each_with_index do |item, number|
  place = number + 1
  puts "#{place}  #{item.to_s}"
end
#get user input:  replace any values they don't like
remove = gets.chomp

#move on or get user input for preparations
if remove == 0.to_s
  puts "\nGreat! You're almost done!\n"
else
  replace = remove.split(",")
  #get user input to replace unwanted preparations
  replace.each do |item_number|
    array_location = item_number.to_i - 1
    puts "\nSo, what would you prefer to #{dish[array_location]}"
    flavor = gets.chomp
    dish[array_location] = flavor
  end
end

#create a variable for desired menu length
puts "\nYou can see up to 10 items, how many of our items would you like to see?\n"
menu_size = gets.chomp.to_i

puts "\nGreat, you'd like to see #{menu_size} dishes! Let's go!\n"

#display menu ascii
print "\n,-,-,-.      \n"
print "`,| | |   ,-. ,-. . . \n"
print "  | ; | . |-' | | | | \n"
print "  '   `-' `-' ' ' `-'\n"

#display menu
menu_size.times do |number|
  description_choice = rand(description.length)
  style_choice = rand(style.length)
  dish_choice = rand(dish.length)
  item_number = number + 1
  
  puts "#{item_number}. #{description[description_choice]} #{style[style_choice]} #{dish[dish_choice]}"
  description.delete_at(description_choice)
  style.delete_at(style_choice)
  dish.delete_at(dish_choice)
end
