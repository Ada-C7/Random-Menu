adj = []
style = []
foods = []

puts "how many items would you like?"
items = gets.chomp.to_i

puts "Describe how your #{items} foods want to be each"
items.times do
  adjective = gets.chomp
  adj.push(adjective)
end

puts "What type of style would you want for your #{items} foods?"
items.times do
  styling = gets.chomp
  style.push(styling)
end

puts "What kind of #{items} dishs would you want?"
items.times do
  dish = gets.chomp
  foods.push(dish)
end

i = 1
items.times do
  index_x = rand(0...(adj.length))
  index_y = rand(0...(style.length))
  index_z = rand(0...(foods.length))

  x = adj[index_x]
  y = style[index_y]
  z = foods[index_z]

  menu = "#{i}: #{x} #{y} #{z}"
  puts menu

  adj.delete_at(index_x)
  style.delete_at(index_y)
  foods.delete_at(index_z)
  i +=1
end
