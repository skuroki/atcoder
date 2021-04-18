A, B = gets.chomp.split(' ').map(&:to_i)

result = []
if A > B
  count = 0
  A.times do |i|
    result << i + 12345
    count += i + 12345
  end
  pivot = count / B
  tail = Array.new(B, pivot)
  (B / 2).times do |i|
    tail[i] -= (B / 2) - i
    tail[B - 1 - i] += (B / 2) - i
  end
  (count % B).times do |i|
    tail[B - 1 - i] += 1
  end
  result += tail.map { |x| -x }
else
  count = 0
  B.times do |i|
    result << i + 12345
    count += i + 12345
  end
  pivot = count / A
  tail = Array.new(A, pivot)
  (A / 2).times do |i|
    tail[i] -= (A / 2) - i
    tail[A - 1 - i] += (A / 2) - i
  end
  (count % A).times do |i|
    tail[A - 1 - i] += 1
  end
  result += tail.map { |x| -x }
  result.map! { |x| -x }
end

puts result.join(' ')
