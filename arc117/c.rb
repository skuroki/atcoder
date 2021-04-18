N = gets.chomp.to_i
c = gets.chomp

while c.length > 1
  new_c = ''
  (c.length - 1).times do |i|
    case c[i..i+1]
    when 'RR', 'BW', 'WB'
      new_c << 'R'
    when 'BB', 'RW', 'WR'
      new_c << 'B'
    when 'WW', 'RB', 'BR'
      new_c << 'W'
    end
  end
  c = new_c
end
puts c
