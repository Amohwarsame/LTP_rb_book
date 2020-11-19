# Old school roman numerals.
# Establish a number system where every one of the above variables has its own bases (base one, base 5, base ten...etc)
#then multiply the number with each base that contains it. Just like the binary system.
def roman(num)
  one = 'I'
  five = 'V'
  ten = 'X'
  fifty = 'L'
  hundred = 'C'
  five_100 = 'D'  
  thousand = 'M'
  num_array = num.to_s.split(//)
  base_500 = ''
  base_50 = ''
  base_5 = ''
  if num_array.length == 4 
    if num_array[1].to_i > 5
      minus_num1 = num_array[1].to_i - 5
      base_500 = five_100 + (hundred * minus_num1)
    elsif num_array[1].to_i < 5 
      base_500 = hundred * num_array[1].to_i
    else 
      base_500 = five_100
    end
    
    if num_array[2].to_i > 5
      minus_num2 = num_array[2].to_i - 5
      base_50 = fifty + (ten * minus_num2)
    elsif num_array[2].to_i < 5 
      base_50 = ten * num_array[2].to_i
    else 
      base_50 = fifty
    end       
    
    if num_array[3].to_i > 5
      minus_num3 = num_array[3].to_i - 5
      base_5 = five + (one * minus_num3)
    elsif num_array[3].to_i < 5 
      base_5 = one * num_array[3].to_i
    else 
      base_5 = five
    end
    puts (thousand * num_array[0].to_i) + base_500 + base_50 + base_5
  elsif num_array.length == 3
    if num_array[0].to_i > 5
      minus_num1 = num_array[0].to_i - 5
      base_500 = five_100 + (hundred * minus_num1)
    elsif num_array[0].to_i < 5 
      base_500 = hundred * num_array[0].to_i
    else 
      base_500 = five_100
    end
    
    if num_array[1].to_i > 5
      minus_num2 = num_array[1].to_i - 5
      base_50 = fifty + (ten * minus_num2)
    elsif num_array[1].to_i < 5 
      base_50 = ten * num_array[1].to_i
    else 
      base_50 = fifty
    end       
    
    if num_array[2].to_i > 5
      minus_num3 = num_array[2].to_i - 5
      base_5 = five + (one * minus_num3)
    elsif num_array[2].to_i < 5 
      base_5 = one * num_array[2].to_i
    else 
      base_5 = five
    end
    puts base_500 + base_50 + base_5
  elsif num_array.length == 2
    if num_array[0].to_i > 5
      minus_num1 = num_array[0].to_i - 5
      base_50 = fifty + (ten * minus_num1)
    elsif num_array[0].to_i < 5 
      base_50 = ten * num_array[0].to_i
    else 
      base_50 = fifty
    end
    
    if num_array[1].to_i > 5
      minus_num2 = num_array[1].to_i - 5
      base_5 = five + (one * minus_num2)
    elsif num_array[1].to_i < 5 
      base_5 = one * num_array[1].to_i
    else 
      base_5 = five
    end
    puts base_50 + base_5
  elsif num_array.length == 1
    if num_array[0].to_i > 5
      minus_num1 = num_array[0].to_i - 5
      base_5 = five + (one * minus_num1)
    elsif num_array[0].to_i < 5 
      base_5 = one * num_array[0].to_i
    else 
      base_5 = five
    end
    puts base_5
  end
end 
roman(11)