N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

puts (A.count == A.uniq.count) ? 'Yes' : 'No'
