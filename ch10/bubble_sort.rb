# This is the 'Rite of passage: sorting' exercise solution.
# Making our own sort method.
words = ['nose', 'ankle', 'hands', 'legs', 'eyes', 'toes', 'face']
def sorter array
  num = array.length()
  while true 
    swapped = false
    (num - 1).times do |i| 
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array
end

puts sorter(words)  
