gets
A = gets.chomp.split(' ').map(&:to_i)
B = gets.chomp.split(' ').map(&:to_i)

puts [B.min - A.max + 1, 0].max
