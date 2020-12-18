# This program finds out the exact second you were born, then finds out when you'll reach one billion seconds.
puts 'Enter the second you were born?'
second_born = gets.chomp.to_i 
billion_seconds = (10**9)

target = billion_seconds - second_born

answer = target / 60 / 60 / 24 / 365 # convert to hours and then days and months

# Now we need to convert the days into a year month and day.

puts target
puts "You will reach a billion seconds at the ripe age of #{answer}"