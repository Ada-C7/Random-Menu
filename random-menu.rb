adjectives = ["hot", "soft", "cold", "creamy", "green", "sour",
"salty", "peppered", "sweet", "delicious"]
cooking_styles = ["pan-fried", "steamed","boiled", "fried","baked", "stewed",
  "sauted", "roasted","smoked", "deep-fried"]
food = ["pizza", "cake","dumplings", "oatmeal","egg", "turkey","pasta",
  "burger", "sandwich", "salad"]

input = 0
stop = false
until stop # Ask user for input until he/she enters number less than 10
  puts "How many items would you like to see?"
  input = gets.chomp.to_i
  if input <= 10
    stop = true
  end
end

new_array = [] # To store new randomly-generated food items
num = 9 # To generate random number from 0 to 9
input.times do |n|
  rand_num1 = rand(0..num) # For adjectives array
  rand_num2 = rand(0..num) # For cooking_Styles array
  rand_num3 = rand(0..num) # For food array
  new_array[n] = adjectives[rand_num1] + " " + cooking_styles[rand_num2] + " " + food[rand_num3]
  # To delete randomly-generated item from array to avoid repeating:
  adjectives.delete_at(rand_num1)
  cooking_styles.delete_at(rand_num2)
  food.delete_at(rand_num3)
  # Decrease the range for random number:
  num = num - 1 
end

puts "MENU:"
input.times do |n|
  puts "#{n+1}. #{new_array[n]}"
end
