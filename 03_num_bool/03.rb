p 10.odd?
p 11.odd?

p 20.even?

p 10 == 10
p 5 == 5.0
p 5.to_f == 5.0.to_i

p 10 != 5
p "Hello".downcase != "hello".downcase

p "123" != 123

######################################
puts

p 1.next()

p 1 + 2
p 1.+(2)

p 10 - 5
p 10.-(5)
p 10.- 5

p 3 * 4
p 3.*(4)

p 10 / 5
p 10./(5)
p 10.div(5)

p 10 % 3
p 10.%(3)
p 10.modulo(3)

#######################################
puts

p 3.between?(1, 5)
p 6.between?(1, 4)
p 'cat'.between?('ant', 'dog')
p 1.2.between?(1, 2)

###################################### 
puts

p 10.5.to_i.class

p 10.6.floor
p 10.2.ceil

p 10.5.round
p 3.14159.round(2)
p -35.68.abs
######################################
puts

3.times { |i| puts "We are on number #{i}"}

3.times do |count|
    puts "Loop number #{count}"
    puts "text"
end

# task: use the times method to output the first ten multiples of 3

10.times do |i|
    puts ((i+1)*3)
end

10.times { |i| puts((i+1)*3) }

###############################################

5.downto(1) { |i| puts" Countdown: #{i}" }

5.downto(0) do |num|
    puts "We are currently on #{num}"
    #some code
end

5.upto(10) { |i| puts "We're moving on up!"}

0.step(100, 5) { |i| puts i }

0.step(50, 7) do |num|
    puts "Alright, let's fo up by 7 again"
    puts "I'm now on #{num}"
end








