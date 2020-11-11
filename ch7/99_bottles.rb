# Print "Bottles of beer on the wall" song.
num = 99
while num > 0
  puts num.to_s + ' bottles of beer on the wall, ' + num.to_s + ' bottles of beer!'
  num = num - 1
  if num > 1 
    puts 'Take one down pass it around, ' + num.to_s + ' bottles of beer on the wall!'
  elsif num == 1
    puts num.to_s + ' bottle of beer on the wall, ' + num.to_s + ' bottle of beer!'
    puts 'Take one down and pass it around, no more bottles of beer on the wall!'
  puts'No more bottles of beer on the wall, no more bottles of beer!'
  puts 'Go to the store and buy some more, 99 bottles of beer on the wall!'
  break
  end
end 
  
  