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