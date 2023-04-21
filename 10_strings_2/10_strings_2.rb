#==== The .split method
str = 'The night elves are among the oldest known races in Azeroth'
p str.split
p str.split('e')

# str.split(" ").each { |word| puts word.length}
puts


#==== iterare over String characters
p(str.each_char) { |char| puts char }

p str.split('') # return an array of characters
p str.chars # return an array of characters


#==== The .join Method on an Array / arr to str
names = %w[Joe Moe Toby Anna]

p names.join(' ')

def custom_join(arr, delimiter = ' ')
  str = ''
  last_i = arr.length - 1
  arr.each_with_index do |el, i|
    str << el
    str << delimiter if i != last_i
  end
  str
end

p custom_join(names, '!--!')
puts


#==== The .count Method on a String
p str.count('e')

def custom_count(str, search_char)
  count = 0
  str.each_char { |char| count += 1 if search_char.include?(char) }
  count
end

p custom_count(str, 'ae')
puts


#==== The .index and .rindex
p str.index('e') # return position from the begining and the only first match
p str.index('are')
p str.index('e', 7) # 7 - position to begin the seach

p str.rindex('e') # reverse, start from the end


def custom_index(str, substr)
  return nil unless str.include?(substr)

  length = substr.length
  str.chars.each_with_index do |_ch, i|
    sequence = str[i, length]
    return i if sequence == substr
  end
end

p custom_index(str, 'e')


#==== The .insert
str.insert(-1, "!") # rewrite the str
p str


#==== The .squeeze
sentence = 'Thhe aardvark jummped   ovver the fence Anna'
puts sentence.squeeze
puts sentence.squeeze('h') # focused on h only


def custom_squeeze(str)
  char_arr = str.chars
  new_str = ''
  char_arr.each_with_index do |ch, i|
    new_str << ch if ch != char_arr[i+1] 
  end
  new_str
end

p custom_squeeze(sentence)
puts


#==== The .clear
p sentence.clear # rewrite str
puts


#==== The .delete
p str
p str.delete('night') # set of symbols, not the match word
p str

