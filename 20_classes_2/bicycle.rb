class Bicycle
  @@maker = "Trek"
  @@count = 0
  
  def self.description # Bicycle.description
    "Hi there, I'm the blueprint for Bicycles! Use me to create a bicycle objects"
  end

  def self.count 
    @@count
  end

  def maker
    @@maker
  end

  def initialize
    @@count += 1
  end
end

p Bicycle.description

p Bicycle.count

t4000 = Bicycle.new
t6000 = Bicycle.new
t8000 = Bicycle.new
p t4000.maker


p Bicycle.count

