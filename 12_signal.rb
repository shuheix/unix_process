# frozen_string_literal: true

child_processes = 5
dead_processes = 0

child_processes.times do
  fork do
    sleep 3
  end
end

loop do
  sleep 1
  puts "sleep..."
end

trap(:CHLD) do
  puts Process.wait
  dead_processes += 1
  puts "Dead processes: #{dead_processes}"

  exit if dead_processes == child_processes
end

