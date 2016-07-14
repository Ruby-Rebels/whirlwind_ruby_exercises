# a
puts "Please enter the name of all the students"
puts "Simply type in done when you are done"

groups = []
input = gets.chomp
while input.downcase != "done"
  groups << input
  input = gets.chomp
end

groups.shuffle!

index = 0
while index < groups.size
  puts "Group: #{groups[index..index + 1].join(",")}"
  index += 2
end

# b

puts "Please enter the name of all the students"
puts "Simply type in done when you are done"

groups = []
input = gets.chomp
while input.downcase != "done"
  groups << input
  input = gets.chomp
end

groups.shuffle!

last_group = []
if groups.size.odd?
  last_group = groups.pop(3)
end

index = 0
while index < groups.size
  puts "Group: #{groups[index..index + 1].join(",")}"
  index += 2
end

if !last_group.empty?
  puts "Group: #{last_group.join(",")}"
end
