#program title ASCII art
title = "╦═╗┌─┐┌┐┌┌┬┐┌─┐┌┬┐
╠╦╝├─┤│││ │││ ││││
╩╚═┴ ┴┘└┘─┴┘└─┘┴ ┴
╔╦╗┌─┐┌┐┌┬ ┬
║║║├┤ ││││ │
╩ ╩└─┘┘└┘└─┘
╔═╗┌─┐┌┐┌┌─┐┬─┐┌─┐┌┬┐┌─┐┬─┐
║ ╦├┤ │││├┤ ├┬┘├─┤ │ │ │├┬┘
╚═╝└─┘┘└┘└─┘┴└─┴ ┴ ┴ └─┘┴└─"
puts "\n\n#{title}\n\nWelcome to my random menu generator!\nHow many menu items would you like to generate? (1-10)"

#ensures that user inut is valid integer value
integer_input = false
while !integer_input
  menu_item_count = gets.chomp.to_i
  if (2..10).include?(menu_item_count)
    integer_input = true
  else
    puts ">>>>>> Try again. You must enter a quanity between 2 and 10."
  end
end

adjectives = ["adjectives"]
cooking_styles = ["cooking styles"]
foods = ["foods"]

[adjectives, cooking_styles, foods].each do |menu_part|
  puts "\nPlease enter #{menu_item_count} #{menu_part[0]} to be used in the menu generator."
  part = (menu_part.pop).chop.capitalize
  menu_item_count.times do |index|
    print "#{part} #{index+1}: "
    valid_input = false
    while !valid_input
      user_input = gets.chomp.downcase
      if user_input =~ /[a-zA-Z]{2,}/ && !menu_part.include?(user_input)
        valid_input = true
      else
        if menu_part.include?(user_input)
          puts ">>>>>> Try again. You have entered an existing value"
        else
          puts ">>>>>> Try again. Invalid entry"
        end
      end
    end
    menu_part << user_input
  end
end

puts "\n\n Here's your random menu list:"
#randomly generate menu item name using the user input
menu_item_count.times do |index|
  puts "\n#{index + 1}. #{adjectives.delete_at(rand(adjectives.length))} #{cooking_styles.delete_at(rand(cooking_styles.length))} #{foods.delete_at(rand(foods.length))}"
end

puts "\n\n"
