A, B, K = gets.chomp.split(' ').map(&:to_i)

def comb(n, m)
  result = 1
  m.times do |i|
    ii = i + 1
    result *= n - ii + 1
    result /= ii
    #dp result
  end
  #dp n
  #dp m
  #dp result
  result
end

def word(a, b, k)
  #dp a
  #dp b
  #dp k
  if b == 0
    'a' * a
  elsif a == 0
    'b' * b
  elsif (c = comb(a + b - 1, b)) >= k
    'a' + word(a - 1, b, k)
  else
    'b' + word(a, b - 1, k - c)
  end
end

puts word(A, B, K)
