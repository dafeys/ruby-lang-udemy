cubes = Proc.new { |num| num ** 3}
squares = Proc.new { |num| num ** 2}

a = [1, 2, 3, 4, 5]
b = [5, 6, 5, 5, 4]
c = [6, 5, 4, 3, 3]

a_cubes, b_cubes, c_cubes = [a ,b, c].map {|array| array.map(&cubes)}

# a_cubes = a.map(&cubes)
# b_cubes = b.map(&cubes)
# c_cubes = c.map(&cubes)

p a_cubes
p b_cubes
p c_cubes
puts


currencies = [10, 20, 30, 40, 50]

to_euros = Proc.new{ |currency| currency * 0.95 }
to_uah = Proc.new { |currency| currency * 38 }

p currencies.map(&to_uah)
p currencies.map(&to_euros)
puts


ages = [10, 48, 30, 50, 20]

is_old = Proc.new do |age|
  age > 40
end

p ages.select(&is_old)
puts


############### PROC II #####################
def greeter
  puts "I'm inside the method"
  yield
end

phrase = Proc.new do
  puts "Inside the proc"
end

greeter(&phrase)# {puts 'Hello from the custom block'}
puts


#------------------------------------------
hi = Proc.new { puts "Hi there" }
hi.call

3.times(&hi)
puts


# ----------------- *** pass a ruby method as Proc ***  ----------------    #
p ["1", "3", "5"].map{|element| element.to_i}
p ["1", "3", "5"].map(&:to_i)

p [13,45,65].map(&:to_s)

p [1,2,3,4,5].select{|num| num.even?}
p [1,2,3,4,5].select(&:even?)
puts


# ----------------- *** method with Proc Paremeters *** ------------------ #
def talk_about(name, &my_proc)
  puts "Let me tekk you about #{name}"
  my_proc.call(name)
end

good = Proc.new {|name| puts"#{name} is a genius!"}
bad = Proc.new {|name| puts"#{name} is a dolt"}

talk_about("Joe",&good)
talk_about("Jim", &bad)





