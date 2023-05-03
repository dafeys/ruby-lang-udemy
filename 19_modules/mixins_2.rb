#==== include and prepend focuses on objects
module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchaseable # class method > module method

  def purchase(item)
    "You bought a copy of #{item} at the bookstore"
  end
end

class Supermarket
  include Purchaseable

  def purchase(item)
    "You bought a #{item} at the supermarket"
  end
end

class Metro < Supermarket
  prepend Purchaseable # module method > class method
end

knugarnia = Bookstore.new
p knugarnia.purchase('super book')

atb = Supermarket.new
p atb.purchase('milk')

metro_if = Metro.new
p metro_if.purchase('plat')

p Bookstore.ancestors # class > module > superclass
p Metro.ancestors # module > class > parents > module > suprerclass becuase of prepend
puts


#==== extend focuses on class
module Announcer
  def who_am_i
    "The name of this class is #{self}"
  end
end

class Dog
  extend Announcer
end

watson = Dog.new
# p watson.who_am_i # cause an error, extend is for class
p Dog.who_am_i
