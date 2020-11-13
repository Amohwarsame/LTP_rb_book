# The program asks you to write as many words as you can (one word per line. breaks when you hit enter on a new line.) and then puts the words into an ar-
# -ray. Eventually it sorts the array alphabetically.
sorted = [ ]
puts 'give me some words? I\'ll sort them for you:' 
while true
  words = gets
  if (words == "\n")  || (words.include? ' ')
    break
  end 
  sorted.push(words)
end 
puts 'Ready, here you go: '
puts sorted.sort()
