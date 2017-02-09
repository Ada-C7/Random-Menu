puts "\nWelcome to the Random Menu Generator!"
puts "Would you like to generate a menu using"
puts "\t(a) your own words or"
puts "\t(b) computer generated words"
print "> "
response = gets.chomp.downcase

# validate that user input is 'a' or 'b'
until response == "a" || response == "b" do
  print "Please type 'a' or 'b' > "
  response = gets.chomp.downcase
end

# determine the number of menu items
print "\nHow many menu items would you like? > "
menu_length = gets.chomp.to_i

# validate that user input is between 1 and 15 menu items
until menu_length > 0 && menu_length <= 15 do
  print "Please enter a number between 1 and 15 > "
  menu_length = gets.chomp.to_i
end

word_lists = [[], [], []]
word_descriptions = ["an adjective", "a preparation description", "a food name"]

if response == "a"
  # populate word lists with user input
  3.times do |i|
    menu_length.times do
      print "Enter #{word_descriptions[i]} > "
      word_lists[i] << gets.chomp
    end
  end

else
  # populate default words
  word_lists[0] = ["smelly", "magnificent", "aromatic", "controversial", "seasonal", "exotic", "expensive", "well-intentioned", "deep-dish", "artisinal", "farm-raised", "hand-fed", "organic", "fresh", "brittle"]
  word_lists[1] = ["baked", "seared", "grilled", "pan-fried", "steamed", "blanched", "microwaved", "stirred", "deep-fried", "spit-roasted", "oven-baked", "egg-glazed", "kobe", "broiled", "marinated", "pulled"]
  word_lists[2] = ["lobster", "latte", "steak", "hamburger", "carrots", "broccoli", "noodles", "rice", "chicken", "alligator", "fries", "sausage", "bacon", "kale", "brussels sprouts"]
end

# display menu items
puts
(1..menu_length).each do |i|
  puts "#{i}. #{word_lists[0].shuffle!.pop} #{word_lists[1].shuffle!.pop} #{word_lists[2].shuffle!.pop}"
end
