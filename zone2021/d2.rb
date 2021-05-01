S = gets.chomp

t1 = ''
t2 = ''
rev = false

S.bytes.each do |c|
  if c == 82
    rev = !rev
  else
    c = c.chr
    if rev
      t1 << c
    else
      t2 << c
    end
  end
end

while t1.gsub!(/aa|bb|cc|dd|ee|ff|gg|hh|ii|jj|kk|ll|mm|nn|oo|pp|qq|rr|ss|tt|uu|vv|ww|xx|yy|zz/, '')
end
while t2.gsub!(/aa|bb|cc|dd|ee|ff|gg|hh|ii|jj|kk|ll|mm|nn|oo|pp|qq|rr|ss|tt|uu|vv|ww|xx|yy|zz/, '')
end

if rev
  t = t2.reverse + t1
else
  t = t1.reverse + t2
end
while t.gsub!(/aa|bb|cc|dd|ee|ff|gg|hh|ii|jj|kk|ll|mm|nn|oo|pp|qq|rr|ss|tt|uu|vv|ww|xx|yy|zz/, '')
end

puts t
