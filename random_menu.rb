# random_menu assignment from 02.08.2017
# by Tamiko Terada

puts "OH-SO-SEATTLE MENU GENERATOR"
# create new array of 10 descriptors
descriptor = [
  "pan-seared",
  "sous-vide",
  "farm-raised",
  "organic",
  "local",
  "rosemary-infused",
  "a duet of",
  "crispy",
  "fire-roasted",
  "ethically-raised"
]
# create new array with 10 meats
meat = [
  "duck breast",
  "dungeness crab",
  "venison",
  "filet mignon",
  "rabbit",
  "sockye salmon",
  "Wagyu beef sirloin steak",
  "Carlton Farm pork",
  "lamb shank",
  "albacore tuna"
]
# create new array with 10 pairing items
pairing = [
  "hand-foraged wild onions",
  "summer squash succotash",
  "tri-colored kale",
  "wild woodland mushrooms",
  "oven-roasted beets",
  "garlic and chive aioli",
  "grilled radicchio",
  "honey-roasted sunchokes",
  "frangelico-blackberry compote",
  "butternut squash rissoto"
]
# replace each array with shuffled array
descriptor.shuffle!
meat.shuffle!
pairing.shuffle!
# prompt user to enter in number of items
print "How many items do you want to see? > "
number_items = gets.to_i # accept input as integer
# only accept input that is between 1 and 10
until number_items > 0 && number_items <= 10 do
  print "Please enter 1 ~ 10 > " # re-prompt for input
  number_items = gets.to_i
end
# verify number to user / subheading
puts "Got it! Here are your #{number_items} items:"
# loop as many times as user specified
number_items.times do |position| # iteration variable
  # number the menu items with array position + 1 (since it starts w/0)
  print "#{position + 1}. "
  # print the shuffled arrays according to the position
  puts "#{descriptor[position]} #{meat[position]} with #{pairing[position]}"
end
puts "Bon appetite!"
