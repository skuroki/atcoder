# N = gets.chomp.to_i
# A = gets.chomp.split(' ').map(&:to_i)
# S = gets.chomp.split('')
require 'set'

N, M = gets.chomp.split(' ').map(&:to_i)

e = {}
M.times do
  x, y = gets.chomp.split(' ').map(&:to_i)
  e[x] ||= []
  e[x].push(y-N)
end
#dp e

p = Array.new(2 * M + 1, false)
p[M] = true
e.keys.sort.each do |x|
  #dp x
  #dp e[x]
  #dp p
  to_add = Set[]
  e[x].each do |y|
    [y-1, y+1].each do |yy|
      #dp yy
      if p[yy + M]
        to_add << y
      end
    end
  end
  e[x].select { |y| (-M..M).include?(y) }.each do |y|
    p[y + M] = false
  end
  to_add.each do |y|
    p[y + M] = true
  end
  #dp p
end

puts p.count { |s| s }
