N = gets.chomp.to_i

p = (N * 1.08).floor

if p < 206
  puts 'Yay!'
elsif p == 206
  puts 'so-so'
else
  puts ':('
end
