# MenuItem class
class MenuItem
  attr_reader :name,:price
  def initialize(name,price)
    @name = name
    @price = price
  end

  def display
	puts "#{@name}: #{@price}"
  end
end