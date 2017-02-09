dessert_type = ["cake", "chocolate", "ice-cream", "pie", "brownie", "fudge", "cookies", "cupcakes", "pudding", "fruit"]
dessert_adjective = ["sweet", "moist", "chocolate covered", "tart", "delicious", "sour", "yummy", "delicious", "bitter", "cold"]
dessert_portion = ["small", "medium", "large", "mini", "giant", "double", "extra-small", "regular", "grande", "venti"]

menu = Array.new
10.times do |x|
menu << "#{dessert_portion.sample} #{dessert_adjective.sample} #{dessert_type.sample}"
end

menu.each_with_index do |x, i|
  puts "#{i + 1} : #{x}"
end
