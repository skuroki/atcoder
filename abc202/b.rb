# N = gets.chomp.to_i
# A = gets.chomp.split(' ').map(&:to_i)
S = gets.chomp.split('')
#dp S.reverse.map { |c| { '0': '0', '1': '1', '6': '9', '8': '8', '9': '6' }[c] }

puts S.reverse.map { |c| { '0': '0', '1': '1', '6': '9', '8': '8', '9': '6' }[c.to_sym] }.join('')
