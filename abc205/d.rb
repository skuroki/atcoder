N, Q = gets.chomp.split(' ').map(&:to_i)
A = gets.chomp.split(' ').map(&:to_i)

# make indices
a = [[0, 0]]
A.each_with_index do |i, ii|
  a1 = i - ii
  a2 = i + 1
  #dp a1
  #dp a2
  if a.last[0] == a1
    a.last[1] = a2
  else
    a << [a1, a2]
  end
end
#dp a

Q.times do
  k = gets.chomp.to_i
  ai = a.bsearch_index { |(a1, a2)| a1 > k }
  #dp k
  #dp ai
  #dp a
  ai ||= a.count
  #dp ai
  a1, a2 = a[ai-1]
  puts k + a2 - a1
end
