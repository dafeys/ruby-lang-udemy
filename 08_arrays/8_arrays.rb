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

def custom_first(arr, num = 0)
  return arr[0] if num == 0
  temp_arr = []
  i = 0
  while i < num do
    temp_arr[i] = arr[i]
    i += 1
  end
  return temp_arr
end

first_arr = custom_first(arr, 2)
p first_arr

def custom_last(arr, num = 0)
  temp_arr = []
  len = arr.length
  for i in 0...num do
    temp_arr[i] = arr[len-1-i]
  end
  return temp_arr
end

last_arr = custom_last(arr,3)
p last_arr
