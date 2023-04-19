#====  the each

arr = [1, 2, 3, 4, 5]

arr.each do |num|
  square = num * num
  puts "The square of #{num} is #{square}"
end

puts


fives = [5, 10, 15, 20, 25, 30, 35, 40]
odds = []
evens = []

fives.each do |num|
  if num.odd?
    #odds.push(num)
    odds << num
  end
end

p odds

def print_evens_and_odds(array)
  odds = []
  evens = []
  array.each { |num|  num.odd? ? odds << num : evens << num }
  p odds
  p evens
end

print_evens_and_odds(fives)


#====   each within each
cars = %w[ BMW Audi Tesla Mazda ]
colors = %w[ Red Black Blue Yellow ]

cars.each do |car|
  colors.each do |color|
  puts "Option: A #{car} car #{color} clolr"
  end
end


#====   the for loop
numbers = [3, 4, 5, 6]

for num in numbers
  puts num
end

puts num  # var num leaks from loop
puts


#====  .each_with_index
colors = %w[ Red Black Blue Yellow ]

colors.each_with_index do |color, index|
  puts "#{index} The current color is #{color}"
end
puts


#====  .map or .collect  (map)
numbers = [1, 2, 3, 4, 5]

squares = numbers.map{|num| num**2}  # return a new array, apply block to each element 
p squares


fahr_temperatures = [105, 73, 40, 18, -2]

celsius_temperatures =  fahr_temperatures.map do |temp|
  minus32 = temp - 32
  minus32 * (5.0/9.0)  # returns new value to new array
end

p celsius_temperatures

# issue with puts
result = [1, 2, 3].map {|num| puts num ** 2}  # puts return nil!
p result
puts


#====   itertion over Array with while or until loops
animals = %w[ Lion Zebra Baboon Cheetah]

i = 0
while i < animals.length       # until i==animals.length
  puts animals[i]
  i += 1
end
puts


#====   The break keyword
prizes = %w[ Dust Dust Dust Dust GOLD Dust ]

i = 0
while i < prizes.length
  current = prizes[i]
  if current == "GOLD"
     puts "Yay! Found gold"
     break
  else
    puts "Lets next"
  end
  i += 1
end
puts


numbers = [1, 2, 3, 4, "Hello", 5, 6, 7, 8]

numbers.each do |num|
  if num.is_a?(Numeric)
    puts "The square of #{num} is #{num ** 2}"
  else
    puts "I'm done with this nonsense!"
    break
  end
end
puts


#====  The .next keyword
numbers = [1, 2, 3, 4, "Hello", 5, 6, nil, 7, [], 8]

numbers.each do |num|
  if !num.is_a?(Numeric)  # unles num.is_a?(Numeric)
    next
  else
    puts "The square is #{num ** 2}"
  end
end
puts


#====  The .reverse method
p [1, 2, 3].reverse   # return the new array

queue = [1, 2, 3, 4, 5]
queue.reverse!    # modify the original array
p queue
puts


#====  The .sort method
numbers = [5, 14, 1, -2, 8]
colors = %w[ Red Black blue Yellow ]  # CAPITAL letter comes before

p numbers.sort
p colors.sort.reverse

numbers.sort!  # overwrite array
puts


#====  The .concat method
p [1, 2, 3] + [4, 5]
p [1, 2, 3].concat([4, 5])



#==== The .max and .min
stock_prices = [3432.234, 23423.23, 876.32]

p stock_prices.max
p stock_prices.min
puts


#==== The .include?
p "Hello".include?("o")
p numbers.include?(14)
puts


#==== The .index and .find_index
colors = %w[ Red Black Blue Yellow ]

p colors.index("Black")  # same as find_index
p colors.find_index("Red")
puts


#==== The .select
grades = [80, 95, 13, 76, 28, 39]

mathes = grades.select do |num|
  num >= 75  # select true values and return as new array
end

p mathes

# select palindromes
words = ["level", "selfless", "racecar", "cat"]

palindromes = words.select {|word| word == word.reverse }
p palindromes


#==== The .reject oposite to .select - select false values and return as new array
animals = ["cat", "lion", "cow", "dog"]

reject_results = animals.reject { |animal| animal.include?("c") }
p reject_results
puts


#==== Multidimensional array
users = [["Bob", 25, "Male"], ["Susan", 40, "Female"], ["Larry", 34, "Male"]]

p users[0][2]

bob, susan, larry = users 


#==== The .partition
numbers = [1, 2, 3, 4, 5, 54, 76, 349, 345]

odds, evens = numbers.partition {|num| num.odd?}   # returns array of 2 arrays truthy and not

p odds
p evens