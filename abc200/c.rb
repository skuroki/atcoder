N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

h = A.group_by { |i| i % 200 }

puts h.values.map(&:size).map { |i| i * (i - 1) / 2 }.inject(:+)
