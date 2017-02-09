# in this version the user will generate their own food items

puts "hello! let's make some food."
puts "what kind of food are you in the mood for?"
puts "let's start with some adjectives:"

adjectives = []
correct = false
puts "please enter an adjective. when you're done, type exit!"
user_adjectives = gets.chomp
until correct
  if user_adjectives == "exit"
    correct = true
  else
    adjectives << user_adjectives
    puts  "please enter an adjective. when you're done, type exit!"
    user_adjectives = gets.chomp
  end
end

cooking_styles = []
correct = false
puts "All right, now enter a cooking style you're feel partial to. when you're done, type exit!"
user_styles = gets.chomp
until correct
  if user_styles == "exit"
    correct = true
  else
    cooking_styles << user_styles
    puts "enter a cooking style you're feel partial to. when you're done, type exit!"
    user_styles = gets.chomp
  end
end

food = []
correct = false
puts "final thing: enter the actual food you'd like cooked! when you're done, type exit!"
user_food = gets.chomp
until correct
  if user_food == "exit"
    correct = true
  else
    food << user_food
    puts "enter the food you'd like cooked! when you're done, type exit!"
    user_food = gets.chomp
  end
end

#okay let's ask the user how much food they want

puts "hello Adie! how many dishes would you like?"
dishes = gets.chomp.to_i


correct = false
until correct
  if dishes > food.length
    puts "whoops! you're too hungry for this restaurant! try ordering again:"
    dishes = gets.chomp.to_i
  else
    puts "great! here's your food:"
    correct = true
  end
end

dishes.times do |i|
  puts "#{i+1}. #{adjectives[rand(adjectives.length)]} #{cooking_styles[rand(cooking_styles.length)]} #{food[rand(food.length)]}"
end
