# added the functionality of sum calculation
class Array
  def sum
    total = 0
    self.each { |element| total += element if element.is_a?(Numeric) }
    total
  end
end

p [1, 'Hello', 2, false, 3].sum

# added demo functionality of sum calculation
class String
  def alphabet_sum
    alphabet = ('a'..'z').to_a
    sum = 0
    self.downcase.each_char do |char|
      if alphabet.include?(char)
        numeric_value = alphabet.index(char) + 1
        sum += numeric_value
      end
    end
    return sum
  end
end

puts 'abcde'.alphabet_sum
puts 'HELLO world'.alphabet_sum
puts '1234'.alphabet_sum
