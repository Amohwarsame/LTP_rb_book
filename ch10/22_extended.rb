# This method takes in a number and returns the string version of it. This program is an extended version of the program twenty_two.rb.
def english_number number
  if number < 0 # No negative numbers.
    return 'please provide a number greater than zero'
  end 
  
  if number == 0
    return 'zero'
  end 
  
  num_string = ''
  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'] 
  
  # Trillions.
  left = number
  write = left/(10**12) # Divide the number with the corresponding base(i.e trillion).
  left = left - (write*(10**12))  # We get rid of the trillion. We are 'left' with the rest of the number.
  if write > 0
    trillion = english_number write
    num_string = num_string + trillion + ' trillion'
    if left > 0
      # So we don't write 'twotrillion'.
      num_string = num_string + ' '
    end 
  end 
  
  # Billions.
  write = left/(10**9) 
  left = left - (write*(10**9))
  if write > 0
    billion = english_number write
    num_string = num_string + billion + ' billion'
    if left > 0
      num_string = num_string + ' ' # So there's space between characters.
    end 
  end
  
  # Millions.
  write = left/(10**6)
  left = left - (write*(10**6))
  if write > 0
    million = english_number write
    num_string = num_string + million + ' million'
    if left > 0
      num_string = num_string + ' '
    end 
  end 
  
  # Thousands.
  write = left/1000
  left = left - (write*1000)
  if write > 0
    thousand = english_number write
    num_string = num_string + thousand + ' thousand'
    if left > 0 
      num_string = num_string + ' '
    end 
  end 
  
  # Hundreds.
  write = left/100
  left = left - (write*100)
  if write > 0
    hundred = english_number write 
    num_string = num_string + hundred + ' hundred'
    if left > 0
      num_string = num_string + ' '
    end
  end 
  
  # Tens.
  write = left/10
  left = left - (write*10)
  if write > 0
    # This is a special exception for numbers between 10 and 20.
    if ((write == 1) && (left > 0))
      # The "-1" is because teenagers[3] is '14' and not '13'.
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end 
    if left > 0
      num_string = num_string + '_'
    end 
  end 
  
  # Ones.
  write = left
  left = 0
  if write > 0 
    num_string = num_string + ones_place[write-1]
  end 
  num_string
end
