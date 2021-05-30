# N = gets.chomp.to_i
# A = gets.chomp.split(' ').map(&:to_i)
# S = gets.chomp.split('')

N, K = gets.chomp.split(' ').map(&:to_i)

f = []
N.times do
  f.push(gets.chomp.split(' ').map(&:to_i))
end
f.sort_by!(&:first)
#dp f

p = 0
i = 0
m = K
while p < 10 ** 100
  #dp p
  #dp f[i]
  #dp m
  if f[i].first - p > m
    break
  else
    old_p = p
    p = f[i].first
    m -= p - old_p - f[i].last
    i += 1
    if i == N
      break
    end
  end
end
p += m

puts [p, 10 ** 100].min
