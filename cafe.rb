# Cafe class
require_relative './menu'
require_relative './order'

class Cafe
	attr_reader :name, :menu
  def initialize(name, menu_items)
    @name = name
    @menu = Menu.new
    @order = nil
    populate_menu(menu_items)
  end
  
    
  def welcome
    puts "welcome to Coder Cafe"
 
  end

  def populate_menu(menu_items)
    menu_items.each do |name,price|
      @menu.add_item(name,price)
    end
  end

  def get_order
    if !@order
      @order = Order.new
    end
    return @order
  end

  def add_to_order(item,quantity)
    get_order.add_item(item, quantity)
  end

  def display_menu
    @menu.display
  end

  # Returns the order total
  def order_total
    total = 0
    @order.get_items.each do |item,quantity|
      total += @menu.get_price(item) * quantity
    end
    return total
  end

  def display_order
	if @order

	  @order.display
      puts "Total:    $%.2f" % order_total
    else
      puts "Thank you for coming!"
    end
    puts
  end

end
