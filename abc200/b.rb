n, K = gets.chomp.split(' ').map(&:to_i)

K.times do
  if n % 200 == 0
    n /= 200
  else
    n = (n.to_s + '200').to_i
  end
end
puts n
