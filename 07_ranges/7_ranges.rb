#==== Intro to ranges
nums = 1..5  # include 5
p nums
p nums.class

nums = 10...55  # exclude last number

p nums
p nums.first
p nums.last  # return 55, but its not include

p nums.first(10)  # return the first n elements
p nums.last(1)  # array of last element

# puts 1..10.first(3)  # cause an error
puts (1..10).first(2)
puts


#==== Alpgabetical ranges
alphabet = "A".."z"
puts alphabet.first(40)
puts


#==== The size method on a range
numbers = 143..758
p numbers.size


#==== Check if a vlue is in a range
alphabet = "a".."m"
puts alphabet.include?("x")

p alphabet === "k"
puts


#==== Generate a Random number
p rand.round(2)
p (rand * 1000).round(2)

p rand(101)
p rand(1..100)

p rand(50..60)