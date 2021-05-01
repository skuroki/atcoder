# A, B = gets.chomp.split(' ').map(&:to_i)
s = gets.chomp
count = 0
while s.include?('ZONe')
  s.sub!(/ZONe/, '')
  count += 1
end
puts count
