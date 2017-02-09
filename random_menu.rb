adjectives = [
  "hot",
  "delicious",
  "salty",
  "crispy",
  "savoury",
  "sweet",
  "soft",
  "soupy",
  "cold",
  "chunky"
]

cooking_styles = [
  "fried",
  "baked",
  "kettle-cooked",
  "steamed",
  "boiled",
  "sauteed",
  "dried",
  "broiled",
  "braised",
  "grilled"
]

foods = [
  "squid",
  "octopus",
  "seitan",
  "veggie dumplings",
  "fish",
  "crab",
  "lobster",
  "carob chips",
  "kale",
  "lamb",
  "seaweed"
]

puts "How many of our menu items would you like to see today?"

num_items = gets.chomp.to_i

while num_items < 0 || num_items > 10
  puts "We only have 10 items on the menu, try again!"
  num_items = gets.chomp.to_i
end

puts "Great! These are our menu items:"

num_items.times do |count|
  p "#{count + 1}: #{adjectives.sample.capitalize} #{cooking_styles.sample.capitalize} #{foods.sample.capitalize}"
  # TW: Is there a cleaner way to number than the slide |count|?
end
