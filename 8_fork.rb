# frozen_string_literal: true

puts "Process ID: #{Process.pid}"
puts "Parent Process ID: #{Process.ppid}"

fork do
  puts "Process ID: #{Process.pid}"
  puts "Parent Process ID: #{Process.ppid}"
end

# Output
#   Process ID: 337910
#   Parent Process ID: 12493
#   Process ID: 337912
#   Parent Process ID: 337910

# ただ確実にマルチコアにすべて均等に分かれて処理されるとは限らない

