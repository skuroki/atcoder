N, M = gets.chomp.split(' ').map(&:to_i)

plan = []
N.times do |i|
  v = Array.new(N, false)
  v[i] = true
  plan << v
end
#dp plan

def ikeru!(from, to, plan)
  mae = (0...N).select { |i| plan[i][from] }
  usiro = (0...N).select { |i| plan[to][i] }
  #dp mae
  #dp usiro
  mae.each do |i|
    v = plan[i]
    usiro.each do |j|
      v[j] = true
    end
  end
end

M.times do
  a, b = gets.chomp.split(' ').map(&:to_i)
  ikeru!(a-1, b-1, plan)
  #dp plan
end

puts plan.map { |v| v.count(true) }.sum
