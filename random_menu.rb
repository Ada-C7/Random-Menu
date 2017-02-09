#arrays that hold descriptive words
adjectives = ["alarming", "flaming", "damp", "big", "small", "mediocre", "salty",
  "dry", "bland", "boring"]

cooking_style = ["fried", "fresh", "baked", "broiled", "roasted", "dried", "grilled",
  "steamed", "pickled", "seared"]

food = ["macaroni", "waffles", "salad", "peppers", "biscuits", "potatoes",
  "beans", "berries", "nachos", "porridge"]

#times loop that iterates 10 times to randomly combine words from all three arrays
#this also adds a number in order to list the "menu" items
10.times do |count|
  puts "#{count + 1}. #{adjectives.sample} #{cooking_style.sample} #{food.sample}"
end
