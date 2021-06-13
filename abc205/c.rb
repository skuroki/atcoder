A, B, C = gets.chomp.split(' ').map(&:to_i)

C2 = C.odd? ? 1 : 2

A2 = A ** C2
B2 = B ** C2

if A2 < B2
  puts '<'
elsif A2 == B2
  puts '='
else
  puts '>'
end
