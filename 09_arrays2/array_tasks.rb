# write a loop that gives a sum of the products of each index and its value

arr = [1, 2, 3, 4, 5]
sum = 0
arr.each_with_index do |num, i|
  sum += num*i
end
p sum
puts


# Prints the product of the element and its index position 
# if the index position is greater than the element
# create this within a method

arr = [-1, 2, 1, 2, 5, 7, 3]

def print_product(arr)
  arr.each_with_index do |num, i|
    puts i*num if i > num
  end
end

print_product(arr)


# Writes a cubes method that accepts an array
# and returns a new array. The array will have
# all the values from the original one cubed.
numbers = [3, 8, 11, 15, 89]

def cubes(array)
  array.map{|num| num ** 3}
end

p cubes(numbers)


# custom max min methods
numbers = [54, 3, 8, 11, 15, 89]

def custom_max(arr)
  return nil if arr.empty?
  max = 0
  arr.each{|num| max = num if num > max}
  return max
end

def custom_min(arr)
  arr.sort[0]
end

p custom_max(numbers)
p custom_min(numbers)