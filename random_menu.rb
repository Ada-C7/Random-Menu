
class Array def random
  shuffle.first
end
end

adjectives = ["furry", "smelly", "oily", "spicy", "buttery", "salty", "sweet", "savory", "hairy", "flaky"]
cooking_style = ["baked", "steamed", "rubbed", "broiled", "sauteed", "poached", "fried", "boiled", "stir-fried", "simmered"]
foods = ["onions", "parsnips", "chickens", "potatoes", "olives", "clams", "dumplings", "tacos", "peanuts", "duck"]

10.times do |number|
  puts (number + 1).to_s  + "." + " " + adjectives.random + " " + cooking_style.random + " " + foods.random
end
