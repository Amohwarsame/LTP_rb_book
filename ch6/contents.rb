# This program displays a table of contents, similar to the table of contents of a book.
# The header has to be centered.
header = 'Table of Contents'
# The chapters shoud have no right justify.
ch_1 = 'Chapter 1: '
ch_2 = 'Chapter 2: '
ch_3 = 'Chapter 3: '
# The chapter titles should have a little bit of right justify and a lot of left justify.
name_1 = 'Getting Started ' 
name_2 = 'Numbers '
name_3 = 'Letters '
# The pages should have more right justify than left justify.
page_1 = 'page '
page_2 = 'page '
page_3 = 'page '
# The numbers have more left justify than right justify.
num_1 = '1'
num_2 = '9'
num_3 = '13'
# Now we start the display(puts) process.
line_width = 15
puts (header.center(line_width * 3.4))
puts ''
puts ch_1 + (name_1.rjust(line_width*1.2)) + (page_1.rjust(line_width*1.3)) + (num_1.rjust(line_width/4))
puts ch_2 + (name_2.rjust(line_width*0.7)) + (page_2.rjust(line_width*1.8)) + (num_2.rjust(line_width/4))
puts ch_3 + (name_3.rjust(line_width*0.7)) + (page_3.rjust(line_width*1.8)) + (num_3.rjust(line_width/4))