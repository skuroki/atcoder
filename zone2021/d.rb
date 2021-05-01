S = gets.chomp

t = ''
rev = false

S.bytes.each do |c|
  if c == 82
    rev = !rev
  else
    c = c.chr
    if rev
      # if t[0] == c
      if t.start_with?(c)
        t.delete_prefix!(c)
      else
        t.prepend(c)
      end
    else
      # if t[t.length - 1] == c
      if t.end_with?(c)
        t.delete_suffix!(c)
      else
        t << c
      end
    end
  end
end

if rev
  puts t.reverse
else
  puts t
end
