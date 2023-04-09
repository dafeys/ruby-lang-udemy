 # new str
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


# lenght and size
a = "Hello world"
b = "Hi, my name if Joe!"
c = " "
d = ""

p a.length
p b.length.class
p c.size
p d.size


# extract char from string
story = "Once upon a time in a land far, far away..."

p story[3]
p story[-1]
p story[100]

p story.slice(3)


# extract multiple characters from string
p story[5, 4]
p story.slice(5, 4)

p story[0, 5]
p story[0, story.length]
p story[-7, 5]


# extract multiple characters with Range Object
p story[27..35]
p story.slice(27..39)

p story[25..-9]


# overwrite characters in string
thing = "rocket ship"

thing[0] = "p"
p thing

thing[7, 5] = "dog"
p thing

thing[7..11] = "cat"
p thing


# case methods
puts "helLo".capitalize
puts "hello world".capitalize

puts "some text".upcase
puts "Some TExT is hERe".downcase

puts "Name".swapcase


# reverse method
puts "Ruby".reverse


# bang '!' methods on strings
word = "hello"
word = word.capitalize  #return copy of str
word.capitalize!        #modify current str
word.upcase!            #modify original obj

p word


# the include? method
story = "Once upon a time in a land far, far away..."
p story.include?("upon")
p story.downcase.include?("once")


# empty? and nill?
p "".empty?    # true if str length equal to zero
p "".nil?      # false because it is not type of obj 'nil'

nil_str = story[100,4]
p nil_str.nil? # true
