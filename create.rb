(1..1024).each do |index|
  File.open(sprintf("%04d", index), 'w') do |file|
    (1..1).each do 
      o = [('a'..'z'),('A'..'Z')].map{|i| i.to_a }.flatten;
      string = (0...80).map{ o[rand(o.length)] }.join;
      file.puts string
    end
  end
end
