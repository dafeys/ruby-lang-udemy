
def custom_first(arr, num = 0)
  return arr[0] if num == 0
  temp_arr = []
  i = 0
  while i < num do
    temp_arr[i] = arr[i]
    i += 1
  end
  return temp_arr
end

first_arr = custom_first(arr, 2)
p first_arr

def custom_last(arr, num = 0)
  temp_arr = []
  len = arr.length
  for i in 0...num do
    temp_arr[i] = arr[len-1-i]
  end
  return temp_arr
end

last_arr = custom_last(arr,3)
p last_arr
puts

input_array = [1, 2, 3, 4, 5, 6, 7, 8]
output_arr = []
p arr.select.with_index{|_,i|i.odd?}
puts '-------'

input_array.each_with_index{|el,i| output_arr<<el if i.odd?}


p output_arr