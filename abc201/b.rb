N = gets.chomp.to_i

st = []
N.times do
  s, t = gets.chomp.split(' ')
  st << [s, t.to_i]
end

puts st.sort_by(&:last)[-2].first
