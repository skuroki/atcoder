require 'prime'
L, R = gets.chomp.split(' ').map(&:to_i)

p = Array.new(R, nil)
(L..R).each do |i|
  p[i] = Prime.prime_division(i).map(&:first)
end

a = 0
(L..R).each do |i|
  if Prime.prime?(i)
    next
  end
  #dp i
  ((i+1)..R).each do |j|
    if j % i == 0
      next
    end
    c = (p[i] - p[j]).count
    if c < p[i].count
      a += 1
    end
  end
  #dp a
end

puts a * 2
