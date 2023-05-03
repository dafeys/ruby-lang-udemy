#==== comparable module in class
class OlympicMedal
  # < > <= >= <=>
  include Comparable

  MEDAL_VALUES = {"gold" => 3, 'silver' => 2, 'bronze' => 1}

  attr_reader :type

  def initialize(type, weight)
    @type = type
    @weight = weight

  end

  def <=>(other)
    if MEDAL_VALUES[type] <MEDAL_VALUES[other.type]
      -1
    elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
      0
    else
      1
    end
  end
end

bronze = OlympicMedal.new('bronze', 5)
silver = OlympicMedal.new('silver', 10)
gold = OlympicMedal.new('gold', 3)

puts bronze > silver # false
puts bronze < silver # true
puts gold >= silver # true
puts bronze != silver # true

puts silver.between?(bronze, gold) # true
puts 


