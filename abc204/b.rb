N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

puts A.map { |x| [x-10, 0].max }.sum
