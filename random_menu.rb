#experimenting w%
adjective = %w[round major filthy buttered collapsable close-knit cloistered catchy weird ritzy clean scandalous]

cooking_style = %w[cooked braised pickled smoked brined julienned pan-seared melted sauteed blanched]

food = ["bacon", "turf", "melon", "bone-broth", "yogurts", "soft-drink", "sandwich", "beans", "pie", "yoo-hoo"]

adj_choice = 0
cook = 0
food_choice = 0
menu_item = 0

print "I bet I can guess your top 10 favorite foods! Press enter."

gets.chomp

10.times do |item|
  menu_item += 1
  adj_choice = adjective[rand(10)]
  cook = cooking_style[rand(10)]
  food_choice = food[rand(10)]
  puts "#{menu_item}.#{adj_choice}," "#{cook}" " #{food_choice}"
end
