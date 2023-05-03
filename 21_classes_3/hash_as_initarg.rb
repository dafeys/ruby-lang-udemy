class Elf
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, details = {})
    defaults = {age: 1000, occupation: 'druid', hobby: 'herbsrism', birthplace: 'Teldrassil'}
    defaults.merge!(details)
    @name = name
    @age = defaults[:age]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]
  end
end

info = {age: 843, occupation: 'high priest'} #, hobby: 'enchant', birthplace: 'Suramar'}
tyrande = Elf.new('Tyrande Whisperwind', info)

p tyrande.occupation
p tyrande.hobby
p tyrande.age
p tyrande.birthplace