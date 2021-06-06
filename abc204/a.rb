X, Y = gets.chomp.split(' ').map(&:to_i)

if X == Y
  puts X
else
  puts ([0, 1, 2] - [X, Y])[0]
end
