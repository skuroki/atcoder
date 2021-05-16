H, W = gets.chomp.split(' ').map(&:to_i)

@a = []
H.times do
  @a << gets.chomp.split('').map { |x| (x == '+') ? 1 : -1 }
end
@a << [] # banpei

def sabun(i, j)
  @a[i][j]
end

@tna = Array.new(H + 1) { [] }
H.times do |ii|
  W.times do |jj|
    i = H - ii - 1
    j = W - jj - 1
    #dp @tna

    migi = @a[i][j+1]
    #dp migi
    sita = @a[i+1][j]
    #dp sita

    result = nil
    if !migi && !sita
      result = 1
    elsif !migi
      result = if (i + j).even?
                 @tna[i+1][j] - sabun(i+1, j)
               else
                 @tna[i+1][j] + sabun(i+1, j)
               end
    elsif !sita
      result = if (i + j).even?
                 @tna[i][j+1] - sabun(i, j+1)
               else
                 @tna[i][j+1] + sabun(i, j+1)
               end
    elsif (i + j).even?
      m = @tna[i][j+1] - sabun(i, j+1)
      s = @tna[i+1][j] - sabun(i+1, j)
      result = [m, s].min
    else
      m = @tna[i][j+1] + sabun(i, j+1)
      s = @tna[i+1][j] + sabun(i+1, j)
      result = [m, s].max
    end
    @tna[i][j] = result
  end
end

def answer
  a = @tna[0][0]
  if a > 1
    'Aoki'
  elsif a == 1
    'Draw'
  else
    'Takahashi'
  end
end

puts answer
