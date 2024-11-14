# frozen_string_literal: true

# 親プロセスが子プロセスの終了を待たない場合と、子プロセスの終了を待地帯場合の違いを理解する

# fork do
#   5.times do |n|
#     sleep 1
#     puts "Child Process #{n}"
#   end
# end

# Process.wait # 子のどれか１つがおわるまで親をブロックする
# abort 'Parent Process died'

# ruby ./10.await_process.rb
# Child Process 0
# Child Process 1
# Child Process 2
# Child Process 3
# Child Process 4
# Parent Process died


fork do
  sleep 5
  puts "first fork"
end

fork do
  sleep 3
  puts "second fork"
end

# おわった順で補足されるっぽい
Process.wait
Process.wait
abort 'Parent Process died'


# Process.waitの戻り値はpid