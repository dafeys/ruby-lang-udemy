# ==== The .start_with?

str = 'The night elves are among the oldest known races in Azeroth'


p str.start_with?('The')
p str.downcase.start_with?('the')

p str.end_with?('Azeroth')


# ? Return true if substring is found at the beginning of the string; false otherwise
def custom_start_with?(string, substring)
  temp_str = ''
  substring.length.times { |i| temp_str << string[i] }
  temp_str == substring
end

p custom_start_with?(str, 'The')


# ? Return true if substring is found at the end of the string; false otherwise
def custom_end_with?(string, substring)
  string[-substring.length..] == substring
end

p custom_end_with?(str, 'oth')
puts

#==== The .include method

p str.include?('are') # true
puts

# ? Return true if the substring is found anywhere within the string
def custom_include?(string, substring)
  string.length.times do |i|
    return true if substring == string[i, substring.length]
  end
  false
end

p custom_include?(str, '1are')
