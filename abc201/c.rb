S = gets.chomp.split('')

matches = 0
10000.times do |cand|
  chars = (cand + 10000).to_s.split('')[1..4]

  m = true
  S.each_with_index do |s, i|
    ii = i.to_s
    case s
    when 'o'
      unless chars.include?(ii)
        m = false
        break
      end
    when 'x'
      if chars.include?(ii)
        m = false
        break
      end
    end
  end
  matches += 1 if m
end

puts matches
