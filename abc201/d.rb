def dp(*vars)
  if ENV['DEBUG']
    puts vars
  end
end

def dpv(name, binding)
  dp "#{name} = #{eval(name.to_s, binding)}"
end

H, W = gets.chomp.split(' ').map(&:to_i)

@a = []
H.times do
  @a << gets.chomp.split('')
end
@a << [] # banpei

def teban_of_takahashi?(i, j)
  (i + j).even?
end

def sabun(i, j)
  case @a[i][j]
  when '+'
    1
  when '-'
    -1
  end
end

def migi_value_of(i, j)
  if teban_of_takahashi?(i, j)
    takahashi_needs_at(i, j+1) - sabun(i, j+1)
  else
    takahashi_needs_at(i, j+1) + sabun(i, j+1)
  end
end

def sita_value_of(i, j)
  if teban_of_takahashi?(i, j)
    takahashi_needs_at(i+1, j) - sabun(i+1, j)
  else
    takahashi_needs_at(i+1, j) + sabun(i+1, j)
  end
end

@tna = Array.new(H + 1) { [] }
def takahashi_needs_at(i, j)
  dp "tna(#{i}, #{j}"
  dpv '@tna', binding
  if @tna[i][j]
    dp "tna(#{i}, #{j}) = #{@tna[i][j]}"
    return @tna[i][j]
  end

  migi = @a[i][j+1]
  dpv :migi, binding
  sita = @a[i+1][j]
  dpv :sita, binding

  result = nil
  if !migi && !sita
    result = 1
  elsif !migi
    result = sita_value_of(i, j)
  elsif !sita
    result = migi_value_of(i, j)
  elsif teban_of_takahashi?(i, j)
    result = [migi_value_of(i, j), sita_value_of(i, j)].min
  else
    result = [migi_value_of(i, j), sita_value_of(i, j)].max
  end
  @tna[i][j] = result
  dp "result(#{i}, #{j}) = #{result}"
  return result
end

def answer
  a = takahashi_needs_at(0, 0)
  if a > 1
    'Aoki'
  elsif a == 1
    'Draw'
  else
    'Takahashi'
  end
end

puts answer
