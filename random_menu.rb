foods = [
  "arepas",
  "chorizos",
  "steak",
  "tomato soup",
  "eggs",
  "bread",
  "pasta",
  "congee",
  "pho",
  "rolls"
]

styles = [
  "deep fried",
  "fried",
  "grilled",
  "boiled",
  "pan fried",
  "charbroiled",
  "infusion",
  "microwaved",
  "marinated",
  "wok cooked"
]

adjectives = [
  "acidic",
  "bitter",
  "creamy",
  "crispy",
  "juicy",
  "crumbly",
  "salty",
  "sour",
  "ripe",
  "yummy"
]

adjectives = adjectives.shuffle
styles = styles.shuffle
foods = foods.shuffle

puts "how many items do you want to see in your menu"
items = gets.chomp.to_i

if items > 10
  puts "we only have 10 options, try it again please!"
elsif items <=10 && items>0
  items.times do |i|
    n= i+1
    puts "#{n}: #{adjectives[i]} #{styles[i]} #{foods[i]}"
  end
else
  puts "that is not an option ;)"
  
end
