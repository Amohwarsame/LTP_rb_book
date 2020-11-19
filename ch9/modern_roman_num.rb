# A program for "Modern" roman numerals.
def modern_roman(num) 
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
    if num_array[1].to_i > 0 && num_array[1].to_i < 4 
      base_500 = hundred * num_array[1].to_i
    elsif num_array[1].to_i == 4 
      minus_num1 = 5 - num_array[1].to_i
      base_500 = (hundred * minus_num1) + five_100
    elsif num_array[1].to_i == 5
      base_500 = five_100
    elsif num_array[1].to_i > 5 && num_array[1].to_i < 9
      minus_num1 = num_array[1].to_i - 5
      base_500 = five_100 + (hundred * minus_num1)
    elsif num_array[1].to_i == 9
      minus_num1 = 10 - num_array[1].to_i
      base_500 = (hundred * minus_num1) + thousand
      
    else 
      base_500 = ''
    end
    
    if num_array[2].to_i > 0 && num_array[2].to_i < 4 
      base_50 = ten * num_array[2].to_i
    elsif num_array[2].to_i == 4 
      minus_num2 = 5 - num_array[2].to_i
      base_50 = (ten * minus_num2) + fifty
    elsif num_array[2].to_i == 5
      base_50 = fifty
    elsif num_array[2].to_i > 5 && num_array[2].to_i < 9
      minus_num2 = num_array[2].to_i - 5
      base_50 = fifty + (ten * minus_num2)
    elsif num_array[2].to_i == 9
      minus_num2 = 10 - num_array[2].to_i
      base_50 = (ten * minus_num2) + hundred
      
    else 
      base_50 = ''
    end
    
    if num_array[3].to_i > 0 && num_array[3].to_i < 4 
      base_5 = one * num_array[3].to_i
    elsif num_array[3].to_i == 4 
      minus_num3 = 5 - num_array[3].to_i
      base_5 = (one * minus_num3) + five
    elsif num_array[3].to_i == 5
      base_5 = five 
    elsif num_array[3].to_i > 5 && num_array[3].to_i < 9
      minus_num3 = num_array[3].to_i - 5
      base_5 = five + (one * minus_num3)
    elsif num_array[3].to_i == 9
      minus_num3 = 10 - num_array[3].to_i
      base_5 = (one * minus_num3) + ten
      
    else 
      base_5 = ''
    end
    puts (thousand * num_array[0].to_i) + base_500 + base_50 + base_5
  elsif num_array.length == 3
    if num_array[0].to_i > 0 && num_array[0].to_i < 4 
      base_500 = hundred * num_array[0].to_i
    elsif num_array[0].to_i == 4 
      minus_num1 = 5 - num_array[0].to_i
      base_500 = (hundred * minus_num1) + five_100
    elsif num_array[0].to_i == 5
      base_500 = five_100
    elsif num_array[0].to_i > 5 && num_array[0].to_i < 9
      minus_num1 = num_array[0].to_i - 5
      base_500 = five_100 + (hundred * minus_num1)
    elsif num_array[0].to_i == 9
      minus_num1 = 10 - num_array[0].to_i
      base_500 = (hundred * minus_num1) + thousand
    else 
      base_500 = ''
    end
    
    if num_array[1].to_i > 0 && num_array[1].to_i < 4 
      base_50 = ten * num_array[1].to_i
    elsif num_array[1].to_i == 4 
      minus_num2 = 5 - num_array[1].to_i
      base_50 = (ten * minus_num2) + fifty
    elsif num_array[1].to_i == 5
      base_50 = fifty
    elsif num_array[1].to_i > 5 && num_array[1].to_i < 9
      minus_num2 = num_array[1].to_i - 5
      base_50 = fifty + (ten * minus_num2)
    elsif num_array[1].to_i == 9
      minus_num2 = 10 - num_array[1].to_i
      base_50 = (ten * minus_num2) + hundred
      
    else 
      base_50 = ''
    end
    
    if num_array[2].to_i > 0 && num_array[2].to_i < 4 
      base_5 = one * num_array[2].to_i
    elsif num_array[2].to_i == 4 
      minus_num3 = 5 - num_array[2].to_i
      base_5 = (one * minus_num3) + five
    elsif num_array[2].to_i == 5
      base_5 = five 
    elsif num_array[2].to_i > 5 && num_array[2].to_i < 9
      minus_num3 = num_array[2].to_i - 5
      base_5 = five + (one * minus_num3)
    elsif num_array[2].to_i == 9
      minus_num3 = 10 - num_array[2].to_i
      base_5 = (one * minus_num3) + ten
      
    else 
      base_5 = ''
    end
    puts base_500 + base_50 + base_5
  elsif num_array.length == 2
    if num_array[0].to_i > 0 && num_array[0].to_i < 4 
      base_50 = ten * num_array[0].to_i
    elsif num_array[0].to_i == 4 
      minus_num1 = 5 - num_array[0].to_i
      base_50 = (ten * minus_num1) + fifty
    elsif num_array[0].to_i == 5
      base_50 = fifty
    elsif num_array[0].to_i > 5 && num_array[0].to_i < 9
      minus_num1 = num_array[0].to_i - 5
      base_50 = fifty + (ten * minus_num1)
    elsif num_array[0].to_i == 9
      minus_num1 = 10 - num_array[0].to_i
      base_50 = (ten * minus_num1) + hundred
    else 
      base_50 = ''
    end
    
    if num_array[1].to_i > 0 && num_array[1].to_i < 4 
      base_5 = one * num_array[1].to_i
    elsif num_array[1].to_i == 4 
      minus_num2 = 5 - num_array[1].to_i
      base_5 = (one * minus_num2) + five
    elsif num_array[1].to_i == 5
      base_5 = five 
    elsif num_array[1].to_i > 5 && num_array[1].to_i < 9
      minus_num2 = num_array[1].to_i - 5
      base_5 = five + (one * minus_num2)
    elsif num_array[1].to_i == 9
      minus_num2 = 10 - num_array[1].to_i
      base_5 = (one * minus_num2) + ten
      
    else 
      base_5 = ''
    end
    puts base_50 + base_5
  elsif num_array.length == 1 
    if num_array[0].to_i > 0 && num_array[0].to_i < 4 
      base_5 = one * num_array[0].to_i
    elsif num_array[0].to_i == 4 
      minus_num3 = 5 - num_array[0].to_i
      base_5 = (one * minus_num3) + five
    elsif num_array[0].to_i == 5
      base_5 = five 
    elsif num_array[0].to_i > 5 && num_array[0].to_i < 9
      minus_num3 = num_array[0].to_i - 5
      base_5 = five + (one * minus_num3)
    elsif num_array[0].to_i == 9
      minus_num3 = 10 - num_array[0].to_i
      base_5 = (one * minus_num3) + ten
      
    else 
      base_5 = ''
    end
    puts base_5
  end
end

modern_roman(5555)