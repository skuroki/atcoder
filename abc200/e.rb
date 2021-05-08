N, K = gets.chomp.split(' ').map(&:to_i)

total = 3

cursor1 = 1
cursor2 = 1

while K > cursor2
  total += 1
  cursor1 = cursor2
  cursor2 += (total - 2) * (total - 1) / 2
end

cursor2 = cursor1
i = 0
while K > cursor2
  i += 1
  cursor1 = cursor2
  cursor2 += total - i - 1
  puts [i, cursor1, cursor2].join(' ')
end

j = K - cursor1 + 1
k = total - i - j

puts [i, j, k].join(' ')
