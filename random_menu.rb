# rest_gen.rb

# 3 arrays of ten items each: adjectives, cooking styles, foods

adj = ["crunchy", "crisp", "hot", "spicy", "bland", "cold", "fresh", "raw", "sweet", "savory"]
cook = ["broiled", "baked", "fried", "steamed", "mashed", "chopped",
  "sauteed", "seared", "bbq", "marinated"]
foods = ["cake", "pasta", "zuchinni", "beef", "chicken", "pork",
  "vegetables", "salmon", "shrimp", "lobster", "clams", "dumplings", "lamb"]

# pull one item from each array you made in the baseline requirements to create a "menu item".
# show a list of 10 menu items
# each item should pull one word from each array
10.times do |i|
  i += 1
  puts "#{i}. #{adj.sample} #{cook.sample} #{foods.sample}"
end
