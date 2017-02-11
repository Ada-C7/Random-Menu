adjective = [
  "hot",
  "steamy",
  "delicious",
  "spicy",
  "sweet",
  "salty",
  "sour",
  "cold",
  "crunchy",
  "sticky"
]

cook_style = [
  "fried",
  "steamed",
  "simmered",
  "BBQ",
  "boiled",
  "baked",
  "stir-fried",
  "roasted",
  "preserved",
  "crushed"
]

foods = [
  "crab",
  "rice",
  "beef",
  "pork",
  "chicken",
  "eggplant",
  "potato",
  "bread",
  "noodles",
  "salmon"
]

# Checking if a string is upper or lower case
class String
  def is_upper?
    self == self.upcase
  end

  def is_lower?
    self == self.downcase
  end
end

puts "How many menu items do you want? (enter 1 to 10)"
entered_num = gets.chomp.to_i
order_num = 1
i = 10
entered_num.times do
  num = rand(i)
  adj = adjective[num]
  adjective.delete(adj)

  num1 = rand(i)
  style = cook_style[num1]
  #making sure that all uppercase letters stay uppercase (BBQ)
  if style.is_lower?
    style1 = style.capitalize
  else
    style1 = style
  end
  cook_style.delete(style)

  num2 = rand(i)
  food = foods[num2]
  foods.delete(food)
  puts "#{order_num}. #{adj.capitalize} #{style1} #{food.capitalize}"
  order_num += 1
  i -= 1
end
