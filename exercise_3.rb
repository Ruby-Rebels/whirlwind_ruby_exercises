customer_info = []
2.times do
  customer = {}
  puts "please enter a first name"
  customer[:first_name] = gets.chomp
  puts "please enter a last name"
  customer[:last_name] = gets.chomp
  puts "please enter a email"
  customer[:email] = gets.chomp
  customer[:account_number] = rand(10**10)
  customer_info << customer
end

customer_info.each do |customer|
  puts "FIRST NAME: #{customer[:first_name]}"
  puts "LAST NAME: #{customer[:last_name]}"
  puts "EMAIL: #{customer[:email]}"
  puts "ACCT #: #{customer[:account_number]}"
end
