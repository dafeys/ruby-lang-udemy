evens = [2, 4, 6, 8, 10]
evens.each { |number| puts number**3}


colors = ["Red", "Purple", "Green", "blue"]
statements = colors.map { |color| "#{color} is a great color" }
puts statements


5.times do |i|
  puts i
  puts "let's move on"
end

