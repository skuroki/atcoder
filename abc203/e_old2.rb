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

p = Set[0]
e.keys.sort.each do |x|
  #dp x
  #dp e[x]
  #dp p
  to_add = Set[]
  e[x].each do |y|
    [y-1, y+1].each do |yy|
      #dp yy
      if p === yy && (-N..N).include?(yy)
        to_add << y
      end
    end
  end
  p -= e[x]
  p += to_add
  #dp p
end

puts p.count
