
# a list of ten adjectives to describe food
adj = [
  "artisanal",
  "soylent",
  "creamy",
  "fresh",
  "spicy",
  "tough",
  "imaginary",
  "raw",
  "gluten-free",
  "fleshy"
]

# stores 10 way to prepare food
prep = [
  "sauteed",
  "deep-fried",
  "boiled",
  "stir-fried",
  "baked",
  "broiled",
  "poached",
  "pan-seared",
  "steamed",
  "mashed"
]
# ten foods

foods = [
  "calamari",
  "sirloin",
  "carrots",
  "gouda",
  "apple",
  "tacos",
  "ice cream",
  "corndog",
  "rice",
  "soy nuts"
]

# instead of generating a bunch of random numbers, I am shuffling the arrays

adj.shuffle!
prep.shuffle!
foods.shuffle!

puts "\n"
# prints 10 random combination of adjectives
foods.length.times do |index|
  puts "#{index + 1}: #{adj[index]} #{prep[index]} #{foods[index]}"
end
puts "\n"
