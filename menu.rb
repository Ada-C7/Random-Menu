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

class String
  def is_upper?
    self == self.upcase
  end

  def is_lower?
    self == self.downcase
  end
end

order_num = 1
i = 10
10.times do
  num = rand(i)
  adj = adjective[num]
  adjective.delete(adj)
  
  num1 = rand(i)
  style = cook_style[num1]
  # For BBQ(all upper case)
    if style.is_lower?
      style_cap = style.capitalize
    else
      style_cap = style
    end
  cook_style.delete(style)
  
  num2 = rand(i)
  food = foods[num2]
  foods.delete(food)
  
  puts "#{order_num}. #{adj.capitalize} #{style_cap} #{food.capitalize}"
  order_num += 1
  i -= 1
end

10.times do
  num = rand(10)
end
