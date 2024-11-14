# frozen_string_literal: true

require 'socket'

child, parent = Socket.pair(:UNIX, :DGRAM, 0)
maxlen = 1000

fork do
  parent.close
  4.times do
    instruction = child.recv(maxlen)
    child.send("#{instruction} accomplished!", 0)
  end
end

child.close

2.times do
  parent.send("Heavy lifting", 0)
end
2.times do
  parent.send("Feather lifting", 0)
end

4.times do
  $stdout.puts parent.recv(maxlen)
end