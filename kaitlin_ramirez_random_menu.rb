#create 3 arrays
appearance = ["beautiful", "elegant", "sophisticated", "handsome", "ritzy", "profound", "brave", "strong", "confident", "bouncy" ]
cook = ["steamed", "boiled", "par-boiled", "seared", "pan-fried", "baked", "chopped", "minced", "wrapped", "medium-rare"]
food = ["dumplings", "jasmine rice", "burger", "eggplant", "clams", "salmon", "avocado", "tomato", "sweet potato", "beans"]

#2nd optional enhancements - user gives how many menu items they want

puts "Hello dear customer, welcome to The Fancy Gourmet Restaurant."
puts "How many dishes would you like on your menu to ponder?"
print "> "
guest_number = gets.chomp.to_i
if guest_number > 0 && guest_number <= 10 then
  puts "Excellent, here is your menu:"
    guest_number.times do |menu_number|
      puts "#{menu_number+1}. " + appearance.sample + " " + cook.sample + " " + food.sample
    end
elsif guest_number > 10 then
  puts "You like options, we like that. Here are all we have today:"
    10.times do |menu_number|
      puts "#{menu_number+1}. " + appearance.sample + " " + cook.sample + " " + food.sample
    end
elsif guest_number == 0 then
  puts "Hmm, we'll surprise you then. I present you #{appearance.sample + " " + cook.sample + " " + food.sample}"
end

#for the 'if' line 13 I tried to make it 'guest_number == 1..10' but that didn't work. Now I see that makes no sense, I was trying to equal input with a range when I want to compare. It needed to be a logical comparison.
