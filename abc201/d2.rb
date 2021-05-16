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
  @a << gets.chomp.split('').map { |x| (x == '+') ? 1 : -1 }
end
@a << [] # banpei

def sabun(i, j)
  @a[i][j]
end

H.times do |ii|
  W.times do |jj|
    i = H - ii - 1
    j = W - jj - 1
    #dp "tna(#{i}, #{j}"
    #dpv '@tna', binding
    if @tna[i][j]
      #dp "tna(#{i}, #{j}) = #{@tna[i][j]}"
      return @tna[i][j]
    end

    migi = @a[i][j+1]
    #dpv :migi, binding
    sita = @a[i+1][j]
    #dpv :sita, binding

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
    #dp "result(#{i}, #{j}) = #{result}"
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
