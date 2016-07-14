# This one I'm going to change from storing in array to storing in a hash
# This will allow for much faster and easier lookups

customer_info = {}

5.times do
  account_number = rand(10**10).to_s
  customer_info[account_number] = []
  customer = {}
  puts "What is the first name"
  customer[:first_name] = gets.chomp
  puts "please enter a last name"
  customer[:last_name] = gets.chomp
  puts "please enter a email"
  email_valid = false
  until email_valid
    email = gets.chomp
    if email.include?("@") && email.end_with?(".com")
      customer[:email] = email
      email_valid = true
    else
      puts "That is an invalid email. Please enter a valid email"
    end
  end
  customer[:account_number] = account_number.to_i
  customer_info[account_number] << customer
end
p customer_info

puts "To look up a person, please enter their account number"
puts "You many enter 'done' if you do not wish to do so"
account_number = gets.chomp
while account_number.downcase != "done"
  customer = customer_info[account_number]
  if customer.nil?
    puts "you did not enter a valid account number. Please try again"
  else
    puts "The customer you requested is #{customer[0][:first_name]} #{customer[0][:last_name]}"
  end
  puts "Please enter an account number or enter 'done' if you are done"
  account_number = gets.chomp
end
