#==== Symbols as hash keys
p :name
p :name.class
# p :name.methods  # show avaliable methods for an object

person = {:name => "Eliot",
          :age => 32,
          :handsome => true,
          :languages => ["Python", "C++"]}

p person[:name]
p person[:languages]
puts


#==== convert symbol to string
p :age.to_s
p "age".to_sym
p "School bus".to_sym
puts


#==== The .fetch method
menu ={burger: 3.99, taco: 2.49, chips: 0.2}

p menu[:burger]
p menu[:salad]  # nil

p menu.fetch(:taco)
# p menu.fetch(:salad)  # error if key doesn't exist
p menu.fetch(:salad, "no item in menu")
puts


#==== add to hash
menu ={burger: 3.99, taco: 2.49, chips: 0.2}

menu[:sandwich] = 4.34

menu.store(:sushi, 8.50)
puts


#==== The .length and .empty
p menu.length

empty_menu = {}
p empty_menu.empty?
puts


#==== The .each
menu.each do |key, price|
  puts "#{key} : #{price}"
end

menu.each do |arr|  # return an array with 2 elements
  p arr 
end


#==== The .each_key and .each_value
menu.each_key {|treat| puts treat}
menu.each_value {|price| puts price}


#==== retrieve keys or values
p menu.keys  # return an array of keys
p menu.values.uniq  # removes duplicate values