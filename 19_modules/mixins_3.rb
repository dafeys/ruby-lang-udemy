class ConvenievceStore
  include Enumerable

  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  def each
    snacks.each do |snack|
      yield snack
    end
  end
end

shop = ConvenievceStore.new
shop.add_snack('Orange')
shop.add_snack('Tomatos')
shop.add_snack('bread')

p shop.snacks
shop.each do |snack| puts "#{snack} is delicious" end
puts

p shop.any? { |snack| snack.length > 3}
p shop.map { |snack| snack.upcase }
p shop.select { |snack| snack.downcase.include?('o')}