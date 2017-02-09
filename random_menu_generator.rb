# Random Menu Generator assignment
# February 8, 2017
# Jackie Watanabe

# creates random menu items choosing words from three lists


# first attempt at code using .sample

# adjectives_array = ["hot", "stinky", "moldy", "juicy", "nauseating", "glamorous", "savory", "orange", "grand", "elegant"]
# cooking_styles_array = ["pan-friend", "steamed", "grilled", "seared", "burned", "consumed", "roasted", "baked", "boiled", "deep-fried"]
# foods_array = ["garbage", "donuts", "cupcakes", "salmon", "tacos", "hamburger", "potatoes", "dumplings", "oysters", "spaghetti"]
#
# 10.times do |menu|
#   menu_number = menu + 1
#   puts menu_number.to_s + ". " + adjectives_array.sample + " " + cooking_styles_array.sample + " " + foods_array.sample
# end


# second attempt after talking with classmate

adjectives_array = ["hot", "stinky", "moldy", "juicy", "nauseating", "glamorous", "savory", "orange", "grand", "elegant"]
cooking_styles_array = ["pan-friend", "steamed", "grilled", "seared", "burned", "consumed", "roasted", "baked", "boiled", "deep-fried"]
foods_array = ["garbage", "donuts", "cupcakes", "salmon", "tacos", "hamburger", "potatoes", "dumplings", "oysters", "spaghetti"]

10.times do |menu|
  puts (menu + 1).to_s + ". " + adjectives_array[rand(0..9)] + " " + cooking_styles_array[rand(0..9)] + " " + foods_array[rand(0..9)]
end



# attempts at optional enhancements

# adjectives_array = ["hot", "stinky", "moldy", "juicy", "nauseating", "glamorous", "savory", "orange", "grand", "elegant"]
# cooking_styles_array = ["pan-friend", "steamed", "grilled", "seared", "burned", "consumed", "roasted", "baked", "boiled", "deep-fried"]
# foods_array = ["garbage", "donuts", "cupcakes", "salmon", "tacos", "hamburger", "potatoes", "dumplings", "oysters", "spaghetti"]
#
# 10.times do |menu|
#   menu_number = menu + 1
#   adjective_compare = []
#
#   adjective = adjectives_array[rand(0..9)]
#   while (adjective_compare.include? adjective)
#     adjective = adjectives_array[rand(0..9)]
#   end
#   adjectives_array[menu] << adjective
#   puts adjectives_array
#
#
# end

#
# adjectives_array = ["hot", "stinky", "moldy", "juicy", "nauseating", "glamorous",
#    "savory", "orange", "grand", "elegant"]
# cooking_styles_array = ["pan-friend", "steamed", "grilled", "seared", "burned",
#    "consumed", "roasted", "baked", "boiled", "deep-fried"]
# foods_array = ["garbage", "donuts", "cupcakes", "salmon", "tacos", "hamburger",
#    "potatoes", "dumplings", "oysters", "spaghetti"]
#
# adjective = []
#
# 10.times do |menu|
#   menu_number = menu + 1
#
#   if adjectives.array.sample != adjective[0..menu]
#   adjective << adjectives_array.sample
#
#
#   puts menu_number.to_s + ". " + adjectives_array.sample + " " + cooking_styles_array.sample + " " + foods_array.sample
# end
