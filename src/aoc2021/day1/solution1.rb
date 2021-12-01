input = File.readlines('day1_input.txt').map { |l| l.chomp.to_i }

endpoint = input.count - 1
count = 0

input.each_with_index do |num, idx|
  next if idx == endpoint
  count += 1 if num < input[idx+1]
end

count