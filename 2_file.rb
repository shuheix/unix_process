# frozen_string_literal: true
# File Descriptor

file1 = File.open('sample1.txt', 'r')
puts file1.fileno

file2 = File.open('sample2.txt', 'r')
puts file2.fileno


file1.close
file3 = File.open('sample3.txt', 'r')
puts file3.fileno


# Output
# 5
# 6
# 5


puts STDIN.fileno
puts STDOUT.fileno
puts STDERR.fileno
# 0
# 1
# 2