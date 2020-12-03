cities = ['Geneva', 'Parma', 'Malmo', 'Tiblisi', 'Ankara', 'Belgrade', 'Helsinki']

def shuffler array
  array_length = array.length()
  for i in array
    indices = array.index(i)
    num = rand(array_length).to_i
    if indices == num
      indices += 1
      array[num], array[indices] = array[indices], array[num]
    else
      array[indices], array[num] = array[num], array[indices]
    end
  end         
  puts array
end

shuffler(cities)

