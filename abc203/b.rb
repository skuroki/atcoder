# N = gets.chomp.to_i
# A = gets.chomp.split(' ').map(&:to_i)
# S = gets.chomp.split('')
N, K = gets.chomp.split(' ').map(&:to_i)

puts (1..N).sum * K * 100 + (1..K).sum * N
