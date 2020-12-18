# Reads names and birth dates from a text file, asks for a name and then tells when that person's next birthday will be.

filename = File.open('birthday.txt')
contents = filename.readlines.map(&:chomp)
max = contents[0].to_s
samuel = contents[1].to_s
maria = contents[2].to_s 
ali = contents[3].to_s
jaspreet = contents[4].to_s
linh = contents[5].to_s

birthday_hash = {}
birthday_hash['Max'] = Time.local(1987, 8, 9)
birthday_hash['Samuel'] = Time.local(1960, 3, 22)
birthday_hash['Maria'] = Time.local(1978, 12, 14)
birthday_hash['Ali'] = Time.local(2002, 7, 1)
birthday_hash['Jaspreet'] = Time.local(1991, 1, 26)
birthday_hash['Linh'] = Time.local(1997, 10, 19)

puts 'Please choose a name from the following names: max, samuel, maria, ali, jaspreet, linh?'
name = gets.chomp.capitalize



if name != '' 
  time = Time.new
  birthday = birthday_hash[name]
  if (birthday.month == time.month) && (birthday.day == time.day)
    age = time.year - birthday.year
    puts name + "'s" + ' next birthday is: ' + time.to_s
    puts name + ' will be turning ' + age.to_s + '.'
  elsif (birthday.month != time.month) && (birthday.day != time.day)
    next_birthday = Time.new(time.year + 1, birthday.month, birthday.day)
    age = next_birthday.year - birthday.year
    puts name + "'s" + ' next birthday is: ' + birthday.to_s
    puts name + ' will be turning ' + age.to_s + '.'
  end
end 

