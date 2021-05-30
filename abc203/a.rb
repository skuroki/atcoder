# N = gets.chomp.to_i
# A = gets.chomp.split(' ').map(&:to_i)
# S = gets.chomp.split('')
A, B, C = gets.chomp.split(' ').map(&:to_i)

if A == B
  puts C
elsif B == C
  puts A
elsif C == A
  puts B
else
  puts 0
end

