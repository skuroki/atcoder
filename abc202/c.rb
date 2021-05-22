N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)
B = gets.chomp.split(' ').map(&:to_i)
C = gets.chomp.split(' ').map(&:to_i)

bc = N.times.map { |i| B[C[i] - 1] }
g = bc.group_by { |x| x }
gg = (N+1).times.map { |i| (g[i] || []).size }

result = A.map { |i| gg[i] }.sum
puts result
