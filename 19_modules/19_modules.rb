#==== module sample
module LengthConversions
  WEBSITE = 'https://moesko.com'

  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
  inches * 2.544
  end
end

puts LengthConversions::WEBSITE
puts LengthConversions.miles_to_feet(100)
puts LengthConversions.miles_to_inches(200)

#==== The Math module
puts Math::PI
puts Math.cos(60)

