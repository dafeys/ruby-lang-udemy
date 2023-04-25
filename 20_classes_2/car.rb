class Car

  def initialize(age, miles)
    base_values = 20000
    age_deduction = age * 1000
    miles_deduction = (miles / 10.to_f)
    @value = base_values - age_deduction - miles_deduction
  end

  def compare_car_with(car)
    self.value > car.value ? 'Your car is better' : 'Your car is worse'
  end

  protected

  def value
    @value
  end

end

civic = Car.new(3, 34000)
fiat = Car.new(1, 10000)

p civic.compare_car_with(fiat)

p civic
p fiat