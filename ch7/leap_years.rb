# Asks for start year and end year, then prints all the leap years in between including the start and end year if they're leap years.

# First solution. (includes start_year in the range)
while true 
  puts 'Give me a year to begin with?'
  start_year = gets.chomp
  puts 'Give me a year to end with?'
  end_year = gets.chomp
  for n in (start_year.to_i..end_year.to_i)
    if (n % 4 == 0) || (n % 100 == 0 && n % 400 == 0)
      puts 'You get a leap year: ' + n.to_s + '.'
    end
  end 
  break
end

# Another solution. (does not include start_year in the range). 
while true 
  puts 'Give me a year to start with?'
  start_year = gets.chomp
  puts 'Give me a year to end with?'
  end_year = gets.chomp
  while start_year.to_i < end_year.to_i 
    start_year = start_year.to_i + 1
    if (start_year % 4 == 0) || (start_year % 100 == 0 && start_year % 400 == 0)
      puts 'You get a leap year : ' + start_year.to_s + '.'
    end
  end
break
end