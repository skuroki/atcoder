def process(source, mode)
  s = source.strip

  if mode == 'dev' && s.start_with?('#dp ')
    token = s.delete_prefix('#dp ')
    "puts \"[dev] #{token}: \#{eval(\"#{token}\")}\""
  else
    source
  end
end

open(ARGV[0]) do |io|
  io.each_line do |l|
    puts process(l, ARGV[1])
  end
end
