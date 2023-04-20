#==== hash with default values
fruit_prices = Hash.new("no price")

fruit_prices[:banana] = 1.05
p fruit_prices[:kiwi]

fruit_prices.default = "9.99"
p fruit_prices[:kiwi]
puts

#==== convert hash to array
menu ={burger: 3.99, taco: 2.49, chips: 0.2, sushi: 8.99}

p menu.to_a  # return an array of arrays
p menu.to_a.flatten  # to one array

menu_array = [[:burger, 3.99],
             [:taco, 2.49],
             [:chips, 0.2],
             [:sushi, 8.99]]

p menu_array.to_h
puts


#==== The .sort and .sort_by
menu ={burger: 3.99, taco: 2.49, chips: 0.2, sushi: 8.99}

p menu.sort  # return an array of nested arrays
p menu.sort.to_h

p menu.sort_by { |key, price| price }
puts


#==== The .key? and .value?
puts menu.key?(:burger)
puts menu.value?(10)
puts


#==== hash as method argument
def calc_total(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tax_amount + tip_amount
end

bill = {price: 25.1, tip: 1, tax: 0.4}

puts calc_total(bill)
puts


#==== The .delete
menu ={burger: 3.99, taco: 2.49, chips: 0.2, sushi: 8.99}

removed = menu.delete(:burger)
p menu


#==== The .select and .reject
menu ={burger: 3, taco: 2, chips: 1, sushi: 10}

high = menu.select { |key, value| value >= 3 }  # return a new hash
p high

odd = menu.reject { |key, value| value.even? }
p odd

include_s = menu.select { |key, value| key.to_s.include?("s") }
p include_s
puts


#==== The .merge
menu = {burger: 3, taco: 2, chips: 1, sushi: 10}
menu2 = {apple: 5, banana: 8, chips: 5}

p menu.merge(menu2)  # overwrites duplicate values from menu2

def custom_merge(hash1, hash2)
  new_hash = hash1.dup
  hash2.each do |key, value|
    new_hash[key] = value
  end
  new_hash
end

p custom_merge(menu, menu2)