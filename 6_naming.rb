# rubyではプロセス名は$PROGRAM_NAMEで取得できる
puts "=============================="
puts $PROGRAM_NAME

# 変えたければプロセス名を上書きすれok

$PROGRAM_NAME = 'My Ruby Program'
puts $PROGRAM_NAME