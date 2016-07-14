# a
puts "Please give me your 5 favorite foods"
favorite_foods = []
5.times do
  favorite_foods << gets.chomp
end

puts "Your favorite foods are:"
favorite_foods.each do |food|
  puts food
end

# b
favorite_foods.each do |food|
  puts "I love #{food}"
end

# c
favorite_foods.each_with_index do |food, index|
  puts "#{index + 1}. #{food}"
end
