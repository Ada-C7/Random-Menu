
  count = 0
  
  food_adjectives = ["soft", "crispy","crunchy", "creamy", "spicy", "sour", "hot", "moldy", "aged", "sweet"]

  cooking_method = ["seared", "boiled", "steamed", "fried", "raw", "charred", "poached", "grilled", "dried", "barbecued"]

  foods = ["salad", "clams", "tofu", "tempeh", "paneer", "cauliflower", "sweet potato", "rice", "pasta", "quinoa"]

  10.times do

    first = food_adjectives.sample

    second = cooking_method.sample

    third = foods.sample

    count += 1

    puts count.to_s + "." + first + " " + second + " " + third
  end
