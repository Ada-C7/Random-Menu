# setting up my arrays for the random generator
adjectives = ["wet", "hot", "sweet", "spicey", "smooth", "delicious", "red", "drippy", "blue", "cold"]
cooking_styles = ["fried", "steamed", "baked", "grilled", "deep-fried", "chicken-fried", "parboiled", "broiled", "parbaked", "blanched"]
food = ["pancakes", "bread", "asparagus", "broccoli", "halibut", "lemongrass", "noodles", "peanuts", "potatoes", "apples"]
# here I iterate over each array ten times, using the rand method to select a random index between 0 and 9.
10.times do |i|
  puts "#{i+1}. #{adjectives[rand(0..9)]} #{cooking_styles[rand(0..9)]} #{food[rand(0..9)]}"
end
