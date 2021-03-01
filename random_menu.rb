adjectives = []
cooking_things = []
foods = []

#gets some number of inputs from user and fills specified array
def fill_arrays(description, array, number)
  puts
  number.times do |num|
    get_input = true
    while get_input do
      #asks for and stores user inputs
      print "Give me #{description} ##{num+1}: "
      new_item = gets.chomp

      if !array.include?(new_item) #adds input to array if unique
        array << new_item
        get_input = false
      else
        puts "\nYou already gave me that one!"
      end
    end
  end
end

#gets a number from the user greater than 0 and >= the specified max
def get_user_number(max, message)
  puts
  user_num = -1
  until (user_num > 0) && (user_num <= max) do
    print message
    user_num = gets.chomp.to_i
    if user_num <= 0
      puts "\nIt has to be at least one."
    end
    if user_num > max
      puts "\nThat's too many!"
    end
  end
  return user_num
end

#asks if user wants to create their own menu
create = nil
until create == "y" || create == "n" do
  print "\nDo you want to create your own random menu words? (y/n) "
  create = gets.chomp
end

if create == "n" #creates menu words if user decies not to
  adjectives = ["special", "gooey", "awesome", "hot", "saucy", "spicy", "salty", "orange", "sharp", "beautiful"]
  cooking_things = ["chopped", "boiled", "deep-fried", "squished", "melted", "mashed", "raw", "toasted", "caramelized", "juiced"]
  foods = ["peas", "bread", "cake", "peanuts", "berries", "soup", "pasta", "vegetables", "cabbage", "tacos"]


else #gets menu words from user

  #gets number of words the user wants to supply between 1 and 10
  num_words = get_user_number(10, "How many words do you want per category? ")

  #gets user inputs for 3 categories and stores them
  fill_arrays("Silly Adjective", adjectives, num_words)
  fill_arrays("Cooking Adjective", cooking_things, num_words)
  fill_arrays("Food", foods, num_words)

end

#gets number of menu items to display from user
num_items = get_user_number(adjectives.length, "How many random menu items would you like to see? ")

puts "\nMENU"

#randomizes menu items and displays with no duplicates
num_items.times do |num|
  adjective = adjectives.sample #chooses random word
  adjectives.delete(adjective) #deletes word from array

  cooking_thing = cooking_things.sample
  cooking_things.delete(cooking_thing)

  food = foods.sample
  foods.delete(food)

  puts
  puts "#{num + 1}. #{adjective} #{cooking_thing} #{food}"
end

puts
