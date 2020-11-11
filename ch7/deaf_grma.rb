# You talk to grandma but doesn't hear you. Unless you shout (all capitals), then she can hear you.
puts 'HI THERE SONNY! COME SIT WITH GRANDMA.'
while true
  response = gets.chomp
  if response != response.upcase 
    puts 'HUH?!  SPEAK UP, SONNY!'
  elsif response == 'BYE BYE BYE'
    puts 'BYE HONEY!'
    break
  else 
    puts 'NO, NOT SINCE ' + rand(1940..1960).to_s
  end
end  
