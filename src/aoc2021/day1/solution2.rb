input = File.readlines('day1_input.txt').map { |l| l.chomp.to_i }

count = 0
last_window = 1000000 # arbitrarily large number

input.each_with_index do |_num, idx|
  next if [0, 1].include?(idx)
  curr_window = input[idx] + input[idx - 1] + input[idx - 2]
  count += 1 if last_window < curr_window
  last_window = curr_window
end

count