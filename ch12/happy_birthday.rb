# The program asks for a birthday. Puts "SPANK!" for every birthday untill current year.
puts 'Enter birth day?'
day = gets.chomp.to_i
puts 'Enter birth month?'
month = gets.chomp.to_i
puts 'Enter birth year?'
year = gets.chomp.to_i 
date = Time.new
current_year = date.year 
years_since = current_year - year
puts 'You get a "SPANK!" for every birthday you had so here you go: '

(0...years_since).each do |f|
  f = f+1
  if f == 1
    puts 'For your ' + f.to_s + 'st ' + 'birthday: ' + 'SPANK!'  
  elsif f == 2
    puts 'For your ' + f.to_s + 'nd ' + 'birthday: ' + 'SPANK!'  
  elsif f == 3 
    puts 'For your ' + f.to_s + 'rd ' + 'birthday: ' + 'SPANK!'  
  else 
    puts 'For your ' + f.to_s + 'th ' + 'birthday: ' + 'SPANK!'  
  end 
end