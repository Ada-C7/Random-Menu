# establish 3 arrays with 10 items each.  1st array is of adjectives, 2nd array of cooking styles, 3rd array of foods.

adjectives = [
  "hot",
  "blue",
  "warm",
  "tempura",
  "spicy",
  "creamy",
  "silky",
  "sugared",
  "avocado",
  "salted"
]

styles = [
  "wok-fried",
  "pan-seared",
  "flash-frozen",
  "baked",
  "tossed",
  "grated",
  "au gratin",
  "riced",
  "julienned",
  "marinated"
]

foods = [
  "salmon",
  "brussel sprouts",
  "cauliflower",
  "spinach salad",
  "tapioca",
  "cake",
  "green beans",
  "risotto",
  "beets",
  "cherries"
]

print "\nMenu Items of the Day\n\n"

#generate 10 item menu, that randomly combines noun, adjective, food

count = 1

10.times do
  descrip = adjectives[rand(adjectives.length)]
  how = styles[rand(styles.length)]
  what = foods[rand(foods.length)]
  print "#{count}. #{descrip} #{how} #{what}\n\n"
  count +=1
end


