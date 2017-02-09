#create empty arrays to be filled with user responses
adjectives = []
styles = []
foods = []

#get user input for how many items they want to see
#use this number to control loops and random num generator
puts "How many menu items would you like to generate?"
user_number = gets.chomp.to_i

#get user input for food descriptors and push to arrays
#base loop off of their numbers
puts "Now you're going to pick some adjectives"
user_number.times do |num|
    print "#{num + 1}:"
    adj = gets.chomp
    adjectives << adj
end

puts "Next choose some cooking styles"
user_number.times do |num|
    print "#{num + 1}:"
    style = gets.chomp
    styles << style
end

puts "And finally, name some foods"
user_number.times do |num|
    print "#{num + 1}:"
    food = gets.chomp
    foods << food
end


#create arrays of random numbers based on user numbers
rand1_array = (0...user_number).to_a.shuffle
rand2_array = (0...user_number).to_a.shuffle
rand3_array = (0...user_number).to_a.shuffle

puts "Here's your menu!"
user_number.times do |num|
    puts " #{num + 1}: #{adjectives[rand1_array[num]]}  #{styles[rand2_array[num]]}  #{foods[rand3_array[num]]}"
end
