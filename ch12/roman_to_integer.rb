# # Convert roman numerals back to integers.

def roman_to_int roman_num
  roman_hash = {}
  roman_num.upcase!
  roman_hash['M'] = 1000
  roman_hash['D'] = 500
  roman_hash['C'] = 100
  roman_hash['L'] = 50
  roman_hash['X'] = 10
  roman_hash['V'] = 5
  roman_hash['I'] = 1
  integer = roman_num.gsub('IV', 'IIII').gsub('XL', 'XXXX').gsub('CD', 'CCCC').gsub('IX', 'VIIII').gsub('XIX', 'XIIIIIIIIII').gsub('XC', 'LXXXX').gsub('CM', 'DCCCC')
  roman_array = integer.split("")
  numbers_array = Array.new
  roman_array.each do |i|
    numbers_array << roman_hash[i]
  end
  num = 0
  roman_array.each do |i|
    num += roman_hash[i]
  end 
  return num
end 

puts roman_to_int('MCMXCIX')

