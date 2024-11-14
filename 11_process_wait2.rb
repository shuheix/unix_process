# frozen_string_literal: true

5.times do
  fork do
    if rand(5).even?
      exit 111
    else
      exit 112
    end
  end
end

5.times do
  pid, status = Process.wait2

  puts "pid: #{pid}"
  puts "status_code: #{status.exitstatus}"
end

# pid: 356732
# status_code: 112
# pid: 356735
# status_code: 111
# pid: 356738
# status_code: 112
# pid: 356741
# status_code: 111
# pid: 356744
# status_code: 111


# Process.waitのやりたいことは、子プロセスが終了するまで親プロセスをブロックすること
# Process.waitはシステムコールをなげているだけで、これをなげおわるまでに子プロセスが終了しているor終了していないかはどうでもいい
# -> ここが混乱していた
# 子プロセスが終了するのをまつっていうことはできているから問題ないみたいな感じ
# カーネルがプロセスの親子関係、状態を管理している

# Process.wait -> pid
# Process.wait2 -> pid, status
