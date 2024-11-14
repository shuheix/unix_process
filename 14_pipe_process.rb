# frozen_string_literal: true

reader, writer = IO.pipe

fork do
  reader.close

  100.times do |i|
    writer.puts "Another one bites the dust #{i}"
  end
end

writer.close
while message = reader.gets
  $stdout.puts message
end

# 実際のパイプは1つで、親と子のプロセスでパイプに対する4つのファイルディスクリプタが存在する