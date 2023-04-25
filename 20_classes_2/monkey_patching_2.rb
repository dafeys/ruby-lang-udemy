# added functionality to find duplicates
class Hash
  def identify_duplicate_values
    values = []
    dupes = []
    self.each_value do |value|
      values.include?(value) ? dupes << value : values << value
    end
    dupes.uniq
  end
end

scores = {a: 1, b: 1, c: 8, d: 5, e: 13, f: 6, g: 1, h: 13, i: 5, j: 9}

p scores.identify_duplicate_values

# added time related functionality by converting Fixnums
class Integer
  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    self * 60 * 60
  end

  def days
    self * 60 * 60 * 24
  end
end


puts Time.now + 45.minutes
puts Time.now + 4.hours
p Time.now + 10.days

# custom times method - the countdown starts from 1
class Integer
  def custom_times
    i = 0
    while i < self
      yield(i + 1)
      i += 1
    end
  end
end

5.times { |i| puts i }
puts
5.custom_times { |i| puts i }
