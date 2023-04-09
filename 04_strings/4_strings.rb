 name = String.new("Name")
 p name

# multiline strings
words = <<MLS
   some text here
            and here
This will be a multi-line strings

--- Goodbye! ---
MLS

p words
puts
puts words


# escape characters
puts "Juliet said 'Goodbye' to Romeo"
puts 'Juliey said "Goodbye" to Romeo'

puts "Juliet daid \"Goodbye\" to Romeo"

# single vs double quoted quotes
str = '!'
puts "Hello\nworld#{str}"
puts 'Hello\nworld#{str}'

# equality
a = "Hello"
b = "hello"
c = "Hello "

p b == a
p "Apple" < "Banana"    #true
p "hello" < "help"      #true
p "A" < "a"             #true
p "X" < "a"             #true
p "Help" < "banana"     #true

# concatenate
first_name = "Harry "
last_name = "Potter"

p first_name + last_name

full_name = first_name # link!!!
p full_name.concat(last_name) # modify orig string
p ("first = #{first_name}")
p ("last = #{last_name}")
puts
full_name = ""
p full_name << last_name << " Wizard"

p last_name.prepend(first_name) # modify orig string



