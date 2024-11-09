# p ARGV
# ruby ./5_args.rb a b c d e
# Output
# ["a", "b", "c", "d", "e"]


args = ARGV

if args.include?('--help')
  puts 'Help is on the way!'
end
