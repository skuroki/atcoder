N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

g = A.tally
puts g.to_a.map { |x| x.last * (N - x.last) }.sum / 2
