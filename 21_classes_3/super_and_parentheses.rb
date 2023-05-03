#==== super without parentheses
# pass all arguments
class Car
  def drive
    "Roooooom!"
  end
end

class Firetruck < Car
  def drive
    super + " Beeeeep!"
  end
end

ft = Firetruck.new
p ft.drive #=> "Roooooom! Beeeeep!"
puts


#==== super() with parentheses but no arguments
# pass witho NO arguments, because Car don't have ones
class Car
  def drive
    "Roooooom!"
  end
end

class Firetruck < Car
  def drive(speed)
    super() + " Beeeeep! I'm driving at speed #{speed}"
  end
end

ft = Firetruck.new
p ft.drive(45) #=> "Roooooom! Beeeeep!"
puts


#==== super(args) with parentheses and with these arguments
# pass specific args to super class
class Car
  attr_reader :maker

  def initialize(maker)
    @maker = maker
  end

  def drive
    "Roooooom!"
  end
end

class Firetruck < Car
  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens
  end

  def drive(speed)
    super() + " Beeeeep! I'm driving at speed #{speed}"
  end
end

ft = Firetruck.new("Ford", 4)
puts ft.maker
p ft.drive(45) #=> "Roooooom! Beeeeep!"