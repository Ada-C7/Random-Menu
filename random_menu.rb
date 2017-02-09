# Come up with the three arrays of ten items each.

puts "Welcome to Random Menu Generator! "
puts "If you're hungry and would like to see a randomly
selected menu! Please type yes!"
# accepts input that will que program to run
generate = gets.chomp.downcase

# first array of adjectives
adjectives = [ "swaggy", "small", "green", "hallow", "opaque", "burnt", "huge", "wet", "dry", "long" ]

#second array of cooking styles
styles =[ "fried", "wet", "brolied", "baked", "braised", "deep fried", "roasted", "dry", "raw"]

#third foods
foods = [ "eggs", "chicken", "toast", "sandwhich", "handburger", "kale salad", "smoothie", "pasta", "soup", "oysters"]

# Create a random menu generator that can be played from the Terminal.

#variable to store the numbered list used in output
number = 0

# the progam will start when the user inputs yes.
if generate == "yes"
  #10 times the loop will pull a value of a random index from each array of the 3 arrays, interpolate those values into a string .
  10.times do
    # incresed the number of the ordered list by 1 each iteration
    number += 1
    puts "#{number}. #{adjectives[rand(0..9)].} #{styles[rand(0..9)]} #{foods[rand(0..9)]}"
  end
end






# Your generator should pull one item from each array you made in the baseline requirements to create a "menu item".

# When the program runs, it should create and show a list of ten numbered menu items.
