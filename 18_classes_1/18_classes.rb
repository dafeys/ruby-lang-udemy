#==== The .superclass and ancestor
p 5.class
p 5.class.superclass
p 5.class.superclass.superclass
p 5.class.superclass.superclass.superclass
puts

p 5.class.ancestors


#==== The .methods Method
p 5.methods.sort

array_method = [].methods.sort
hash_method = {}.methods.sort

puts array_method & hash_method