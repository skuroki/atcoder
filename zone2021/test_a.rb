R = gets.chomp.split(' ').map(&:to_i)
puts R.inject(:+)

