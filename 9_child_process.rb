# frozen_string_literal: true

fork do
  5.times do
    sleep 1
    puts 'Child Process'
  end
end

abort 'Parent Process'



# ruby ./9_child_process.rb
# Parent Process -> ここで親プロセスが死ぬ
# ➜  unix_process git:(main) ✗ Child Process -> 子プロセスによってSTDOUTが上書きされている
# Child Process
# Child Process
# Child Process
# Child Process

