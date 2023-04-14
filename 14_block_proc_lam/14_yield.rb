def pass_control
  puts "start inside the method"
  yield  # pass control from method to the block
  puts "back inside the method"
end

pass_control { puts "block is here"}


def who_am_i
  adjective = yield
  puts "I am very #{adjective}"
end

who_am_i { "handsome" }  # implicity return string
puts


def multiple_pass
  puts "Inside the method"
  yield
  puts "back inside the method"
  yield
end

result = multiple_pass { puts "Now I'm inside the block" }
p result  # nil
puts


# **************   yeild with args   ************** #
def speak_the_truth(name)
  yield name if block_given?
end

speak_the_truth("Ivan"){ |name| puts "#{name} is brilliant!"}
puts

speak_the_truth("Joe") do |name, age|
  p name 
  p age 
  puts "#{name} is #{age} years old"
end
puts


def number_evaluation(num1, num2, num3)
  puts "Puts from the method"
  yield(num1, num2, num3)
end

result = number_evaluation(10, 20, 30){|num1, num2, num3| num1*num2*num3}
p result
puts

# ********** CUSTOM each METHOD *************** #
def custom_each(array)
  i = 0
  while i < array.length
    yield array[i]
    i += 1
  end
end

names = ["Toby", "Joe", "Anna"]
numbers = [10, 43, 39]

custom_each(names) do |name|
  puts "The length of #{name} is #{name.length}!"
end

custom_each(numbers) do |number|
  puts "The square of #{number} is #{number**2}"
end




