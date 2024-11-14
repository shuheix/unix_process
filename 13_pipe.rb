r, w = IO.pipe

w.write "Hello"
w.close # readerがEOFまで読み込む対策
puts r.read # => Hello
