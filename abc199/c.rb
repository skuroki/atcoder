N = gets.chomp.to_i
s = gets.chomp
Q = gets.chomp.to_i
t = []
a = []
b = []
Q.times do
  t1, a1, b1 = gets.chomp.split(' ').map(&:to_i)
  t << t1
  a << a1
  b << b1
end
fliped = false
Q.times do |i|
  t1 = t[i]
  a1 = a[i]
  b1 = b[i]
  if t1 == 1
    if fliped
      a1 = (a1 + N) % (2 * N)
      b1 = (b1 + N) % (2 * N)
    end
    x = s[a1 - 1]
    s[a1 - 1] = s[b1 - 1]
    s[b1 - 1] = x
  elsif t1 == 2
    fliped = !fliped
  end
end

if fliped
  x = s.slice!(N..(2 * N - 1))
  s.prepend(x)
end

puts s
