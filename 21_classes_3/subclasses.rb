class Employee

  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old."
  end
end

class Manager < Employee
  def yell
    "Who's the boss? I'm the boss!"
  end
end

class Worker < Employee
  def clock_in(time)
    "Starting my shift at #{time}"
  end

  def yell
    "I'm working!!!"
  end
end

bob = Manager.new('Bob', 43)
anna = Worker.new('Anna', 32)

p Manager.ancestors

p bob.introduce
p bob.yell
p anna.yell
p anna.clock_in('3am')

puts bob.is_a?(Manager) #=> true
puts anna.is_a?(Employee) #=> true
puts bob.is_a?(BasicObject) #=> true

puts anna.instance_of?(Worker) #=> true
puts anna.instance_of?(Object) #=> false