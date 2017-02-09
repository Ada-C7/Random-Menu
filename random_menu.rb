#random_menu is a program that generates random menu items
#from 1-10 items depending on the User input

adjectives = ["Paltry", "Ill", "Marvelously", "Trashy", "Habitually", "Special", "Righteous", "Impossibly", "Devilish", "Nervous"]
cooking_style = ["Seared", "Pickled", "Cured", "Boiled", "Stewed", "Fried", "Salted", "Steamed", "Baked", "Raw"]
foods = ["Shadow-Eyed Sponge", "Chinstap Labradoodle", "Honey Catfish", "Vampire Cuttlefish", "Iris-Tailed Bison", "Mellow-Bellied Newfoundland", "Whistling Hartebeest", "Preying Pademelon", "Black Saola", "Clouded Puffin"]

# Get user input on how many items they want displayed on the virtual menu

puts ",-.-.                   ,---.                         |"
puts "| | |,---.,---..   .    |  _.,---.,---.,---.,---.,---.|--- ,---.,---."
puts "| | ||---'|   ||   |    |   ||---'|   ||---'|    ,---||    |   || "
puts "` ' '`---'`   '`---'    `---'`---'`   '`---'`    `---^`---'`---'`  "
print "Welcome to the Virtual Menu! How many items would you like on the menu today? We have 10 possible combinations: "
items = Integer(gets.chomp)

#Only run the program if the amount entered is equal or less to the amount in the Arrays
if items < 11
  items.times do |num|
    #Randomly draw from all three menu arrays
    rand_adjective = adjectives.sample
    rand_cooking_style = cooking_style.sample
    rand_foods = foods.sample
    puts "#{num + 1}. #{rand_adjective} #{rand_cooking_style} #{rand_foods}"
    #Delete the items used from the arrays so there are no repeats
    adjectives.delete(rand_adjective)
    cooking_style.delete(rand_cooking_style)
    foods.delete(rand_foods)
    end
else
  puts "Sorry, please pick 10 or less items to choose from!"
end
