# array of food descriptors
descriptor = [
  "hot",
  "crispy",
  "chilled",
  "spicy",
  "sour",
  "cheesy",
  "fresh",
  "vegetarian",
  "aged",
  "pickled"
]

# array of cooking styles
cooking_style = [
  "steamed",
  "fried",
  "stir-fried",
  "seared",
  "sous-vide",
  "terrine of",
  "baked",
  "boiled",
  "scrambled",
  "blended",
]

# array of foods
food = [
  "salmon",
  "chicken breast",
  "lamb",
  "cous-cous",
  "pork",
  "seafood",
  "shrimp",
  "sirloin",
  "pudding",
  "omelet"
]

# random menu generator loop numbering menu items 1 - 10 and taking a random element from descriptor, cooking_style, and foods arrays
(1..10).each {
  |n| puts "#{n}. #{descriptor.sample} #{cooking_style.sample} #{food.sample}"
}
