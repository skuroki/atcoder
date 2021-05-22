N = gets.chomp.to_i
P = gets.chomp.split(' ').map(&:to_i)
Q = gets.chomp.to_i

gens = []
all = {}
N.times do |i|
  if i == 0
    gens[0] = {1 => []}
    all[1] = [1]
    next
  end
  ii = i + 1
  p = P[ii - 2]
  des = all[p] + [ii]
  g = des.size - 1
  gens[g] ||= {}
  gens[g][ii] = des
  all[ii] = des
end

#dp gens
#dp Q

Q.times do
  u, d = gets.chomp.split(' ').map(&:to_i)
  #dp u
  #dp d
  gen = gens[d] || {}
  result = gen.values.count { |v| v.include?(u) }
  puts result
end
