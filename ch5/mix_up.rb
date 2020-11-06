# This program asks for first, middle and last name and greetes you with your fullname.
puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
puts 'Hey there ' + first_name + " " + middle_name + ' ' + last_name + '!'

# This program asks for a number, and then adds one to it. It then puts a string saying the new number is bigger and better.
puts 'Give me your favorite number? '
number = gets.chomp
number = number.to_i + 1
puts "I have a better and bigger number for you. Here it is: " + number.to_s + '.'
