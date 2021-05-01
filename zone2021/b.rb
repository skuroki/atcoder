N, D, H = gets.chomp.split(' ').map(&:to_i)
candidates = [0]
N.times do
  d, h = gets.chomp.split(' ').map(&:to_i)
  c = (D * h - d * H).to_f / (D - d)
  candidates << c
end

puts candidates.max
