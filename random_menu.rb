# Bo made me put this in
puts " #     #                         #####
 ##   ## ###### #    # #    #   #     # ###### #    # ###### #####    ##   #####  ####  #####
 # # # # #      ##   # #    #   #       #      ##   # #      #    #  #  #    #   #    # #    #
 #  #  # #####  # #  # #    #   #  #### #####  # #  # #####  #    # #    #   #   #    # #    #
 #     # #      #  # # #    #   #     # #      #  # # #      #####  ######   #   #    # #####
 #     # #      #   ## #    #   #     # #      #   ## #      #   #  #    #   #   #    # #   #
 #     # ###### #    #  ####     #####  ###### #    # ###### #    # #    #   #    ####  #    #

"

word1 = []
word2 = []
word3 = []
words = [word1, word2, word3]

# set number of items
puts "How many possibilities would you like to have for each menu term?"
options = gets.chomp.to_i

# accept user input for the word arrays
3.times do |n|
  puts "For the next term:"
    options.times do
    if n < 2
      print "Enter an adjective: "
    else
      print "Enter a food item: "
    end

    word = gets.chomp
    words[n] << word
  end
end

# request user input for number of menu items
while true
  puts "How many items would you like on your menu? (maximum #{options})"
  items = gets.chomp.to_i
  if (items <= options) && (items > 0)
    break
  else
    puts "Please select #{options} or fewer menu items."
  end
end

# generate menu items
items.times do |n|
  first_word = word1.delete_at(rand(word1.length))
  second_word = word2.delete_at(rand(word2.length))
  third_word = word3.delete_at(rand(word3.length))

  puts "#{n+1}. #{first_word} #{second_word} #{third_word}"
end
