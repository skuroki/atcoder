# N = gets.chomp.to_i
# S = gets.chomp.split('')
a, b, c = gets.chomp.split(' ').map(&:to_i)

puts 21 - a - b - c
