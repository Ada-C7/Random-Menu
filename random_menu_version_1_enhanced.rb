# random menu generator
# create 3 arrays (adjectives, type of cooking, food)
# create random list of 10 food items using all arrays
puts "Write down some adjectives (end with blank line): "

adjectives = []

adj = gets.chomp.downcase
while adj != ""
  adjectives << adj
  adj = gets.chomp.downcase
end

puts "Write down some cooking styles (end with blank line): "

styles = []

style = gets.chomp.downcase
while style != ""
  styles << style
  style = gets.chomp.downcase
end

puts "Write down some foods (end with blank line): "

foods = []

food = gets.chomp.downcase
while food != ""
  foods << food
  food = gets.chomp.downcase
end

# which array is the shortest
shortest = [adjectives.length, styles.length, foods.length].min

number = nil
while number == nil
  print "How many items would you like to see on your menu? "
  # Integer() will convert input to a number or it will throw an error
  # that will be caught by the rescue clause if input is not a number
  # rescue prints error and continues execution of the code
  number = Integer(gets.chomp) rescue puts("That's not a number, try again!")
  # if Integer threw an error number will be (still) nil
  # if the user entered a negative number the code will print the error
  # message and set number to nil so that the loop will repeat
  if number != nil && number <= 0
    puts "This number is too low. Please choose between 1 - #{shortest}."
    number = nil
  elsif number != nil && number > shortest
    puts "This number is too high. Please choose between 1 - #{shortest}."
    number = nil
  end
end

#randomizes arrays
adjectives.shuffle!
styles.shuffle!
foods.shuffle!

number.times do |x|
  puts "#{x + 1}. #{adjectives[x]} #{styles[x]} #{foods[x]}"
end
