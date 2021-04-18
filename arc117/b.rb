N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

a = A.sort.uniq
a.unshift(0)

result = 1
(a.length - 1).times do |i|
  result = result * (a[i+1] - a[i] + 1) % (10**9 + 7)
end
puts result
