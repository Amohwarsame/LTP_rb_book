# The improved version of contents.rb program in Chapter 6.
# The assignment part.
info = ['Table of contents', 'Chapter 1: ', 'Chapter 2: ', 'Chapter 3: ', 'Getting Started ', 'Numbers ', 'Letters ', 'Page', '1', '9', '13']
# The display part
line_width = 15
puts (info[0].center(line_width * 3.4))
puts ''
puts info[1] + (info[4].rjust(line_width * 1.2)) + (info[7].rjust(line_width * 1.3)) + (info[8].rjust(line_width / 4)) 
puts info[2] + (info[5].rjust(line_width * 0.7)) + (info[7].rjust(line_width * 1.8)) + (info[9].rjust(line_width / 4))
puts info[3] + (info[6].rjust(line_width * 0.7)) + (info[7].rjust(line_width * 1.8)) + (info[10].rjust(line_width / 4))
