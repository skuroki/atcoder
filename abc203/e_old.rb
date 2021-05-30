# N = gets.chomp.to_i
# A = gets.chomp.split(' ').map(&:to_i)
# S = gets.chomp.split('')

N, M = gets.chomp.split(' ').map(&:to_i)

e = {}
M.times do
  x, y = gets.chomp.split(' ').map(&:to_i)
  e[x] ||= []
  e[x].push(y)
end
#dp e

p = {N => [[0, 0]]}
old_x = 0
e.keys.sort.each do |x|
  #dp x
  #dp e[x]
  #dp p
  p.each do |(k, v)|
    #dp k
    #dp v
    if v.last.last == old_x
      #dp :a
      if e[x].include?(k)
        p[k].last[1] = x - 1
      else
        p[k].last[1] = x
      end
    end
  end
  #dp p
  e[x].each do |y|
    [y-1, y+1].each do |yy|
      #dp yy
      #dp p[yy]
      if p[yy] && p[yy].last.last >= x - 1
        p[y] ||= []
        p[y] << [x, x]
      end
    end
  end
  #dp p
  old_x = x
end

#dp p
ee = e.keys.sort.last
puts p.keys.count { |y| p[y].last.last == ee }
