# 'Import' the english_number method from 22_extended.rb.
require "./22_extended.rb"

# Print "Bottles of beer on the wall" song.
start = 99 
while start > 0
  number = english_number start
  puts number + ' bottles of beer on the wall, ' + number + ' bottles of beer!'
  start = start - 1
  number = english_number start
  if start > 1 
    puts 'Take one down pass it around, ' + number + ' bottles of beer on the wall!'
  elsif start == 1
    puts number + ' bottle of beer on the wall, ' + number + ' bottle of beer!'
    puts 'Take one down and pass it around, no more bottles of beer on the wall!'
  puts'No more bottles of beer on the wall, no more bottles of beer!'
  puts 'Go to the store and buy some more, 99 bottles of beer on the wall!'
  break
  end
end 
  
  