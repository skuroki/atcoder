N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

o = Array.new(2 * 10 ** 5 + 1, nil)
e = 0

(N / 2 + 1).times do |i|
  x1 = A[i]
  #dp x1
  x2 = A[N - 1 - i]
  #dp x2
  o1 = x1
  l1 = 0
  while o[o1]
    l1 += 1
    o1 = o[o1]
  end
  #dp o1
  o2 = x2
  l2 = 0
  while o[o2]
    l2 += 1
    o2 = o[o2]
  end
  #dp o2
  if o1 != o2
    if l2 > l1
      o[o1] = o2
    else
      o[o2] = o1
    end
    e += 1
  end
end

puts e
