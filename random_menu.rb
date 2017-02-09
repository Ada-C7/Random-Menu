# prints out a menu of ten items made up of 3 random items
adjectives = ["Fizzy", "Lovely", "Gamey", "Succulent", "Sharp", "Chewy", "Smooth", "Tangy", "Rich", "Woody"]
cooking_styles = ["roasted", "broiled", "steamed", "sauteed", "fried", "seared", "raw", "cured", "baked", "poached"]
foods = ["dumplings", "mushrooms", "eggs", "bison", "quail", "chicken", "pasta", "steak", "meatballs", "sausage"]

puts "Welcome to the random menu generator!"

puts "Here is the menu for today:"

10.times do |item|
  puts "#{item + 1}. #{adjectives[rand(0..9)]} #{cooking_styles[rand(0..9)]} #{foods[rand(0..9)]}"
end
