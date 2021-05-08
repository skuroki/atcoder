N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

bs = []
c = nil
202.times do |i|
  next if i == 0
  break if i >= 2 ** N
  count = 0
  ary = []
  [N, 8].min.times do |j|
    if i & (2 ** j) > 0
      count = (count + A[j]) % 200
      ary << j + 1
    end
  end
  if b = bs[count]
    c = ary
    puts 'Yes'
    puts ([b.size] + b).join(' ')
    puts ([c.size] + c).join(' ')
    exit
  else
    bs[count] = ary
  end
end

puts 'No'
