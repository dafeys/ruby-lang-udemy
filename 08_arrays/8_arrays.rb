# create an array of strings
names = %w[Anna Joe James Leonard Tom]  
puts names
puts


# Array with Array.new
p [1, 2, 3].class
p Array.new(5)  # 5 nil elements
p Array.new(10, true)  # 10 true
p Array.new(3, [1, 2, 3])
puts


# index position
fruits = %w[Apple Orange Grape Banana]
p fruits.length  # return total number of elements
p fruits[1]
p fruits[10]  # return nil

p fruits[fruits.length - 1]  # same as fruits[-1]

p fruits.[](fruits.length - 1)
p fruits.[](2)
puts


# the fetch method
p names.fetch(2)
# p names.fetch(10)  # causes an error
p names.fetch(100, "None")  # return "None" if element doesn't exist
puts


# acces sequential array elements
numbers = [3, 4, 6, 7, 5, 3, 2, 2, 8, 9, 6]

p numbers[2, 4]  # from 2nd + 4 elements
p numbers[1, 3]

p numbers[0]  # return an element 3
p numbers[0, 1]  # return an array of one element [3]

p numbers[4, 100]  # cuting off 100 to array.length-1

# range
p numbers[3..7]  # from 3-th to 7-th element includes 7th
p numbers[3...7]  # from 3-th to 6-th element not includes 7th
p numbers[3..3]  # array with one element

# values_at
p numbers.values_at(0, 1, 7)  # return an array containing the specified elements  
p numbers.values_at(0, -1)  # return an array containing the first and the last elements
p numbers.values_at(0, 0, 2, 2)  # also can containing duplicates
p numbers.values_at(1..4)  # from 1st to 4th

# slice   same as [..]
p numbers.slice(2, 4)
p numbers.slice(4..7)
puts

# ----------- mutations -----------------#
fruits = %w[Apple Orange Grape Banana]

fruits[4] = "Watermelon"
puts fruits

fruits[7] = "Kiwi"  # paste nil values in 5, 6 elements
p fruits

fruits[3, 4] = ["Canteloupe", "Dragonfruit"]
p fruits

fruits[0..3] = ["Blah"]  # change first element and removes 1,2,3 elemetns
p fruits

# lenght vs size 
# size more faster

p numbers.length
p numbers.size

# count more flexible
p numbers.count
p numbers.count(6)  # how many times 6 in array

# empty and nil
puts [1, 2, 3].empty?
puts [].empty?      # true if length == 0

puts  [false, false, false].nil?

letters = ("a".."j").to_a
character = letters[5]
p character
character = letters[99]
p character.nil?

# first and last
arr = [3, 12, 7, 4, 5, 56, 34, 56]

p arr.first  # value of 1st element
p arr.last

p arr.first(3)  # array 3 first elements
p arr.last(2)  # array of 2 last elements

p arr.first(1)  # array of one element
p arr.last(1)


# the push metods
locations = %w[House, Airport, Bar]

locations.push("Restaurant", "Saloon")

locations << "Home"
locations << "Office" << "Forest"

# insert by index position
locations.insert(0, "Sea")
locations.insert(-1, "Village", "Saloon")

p locations
puts


# the pop 
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

last_element = arr.pop  # return element

p arr
p last_element

two_items = arr.pop(2)  # removes 2 lasts elements
p two_items
p arr

item = arr.pop(1)  # returns an array of 1 element


# the shift and unshift
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.shift  # remover first element and shift arr
p arr

extract_arr = arr.shift(3)
p extract_arr
p arr

arr.unshift(33, 44)  # add element at begin of arr
p arr
puts


# array comparising
a = [1 ,2, 3]
b = [1, 2, 3, 4]
c = [3, 2, 1]
d = [1, 2, 3]

p a == b  # false
p a == c  # false
p a == d  # true
p a != c  # true


# spaceship operator   <=> ---   -1 0 2
p 5 <=> 5  # 0
p 5 <=> 7  # -1 
p 5 <=> 3  # 1 positive if is bibber
p 5 <=> [1, 2]  # nil when incopareble

p [3, 4, 5] <=> [3, 4, 5]  # 0
p [3, 4, 5] <=> [4, 1, 5]  # -1

p [1, 2, 30] <=> [1, 2, 10]  # 1


# convert range to array
letters_range = "A".."T"
p letters_range
arr = letters_range.to_a

numbers_range = 400..450
p numbers_range.to_a
puts


# the is_a? method
p 100.is_a?(Numeric)
p 100.is_a?(Integer)
p 100.is_a?(Object)
p 100.is_a?(BasicObject)

p ["a", 3].is_a?(Array)

arr = [3, 4]
if arr.is_a?(Array)
  arr.each{|i| p i}
end

