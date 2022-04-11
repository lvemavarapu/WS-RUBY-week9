# Order class
class Order
  def initialize
    @order_items = Hash.new(0)
  end

  def add_item(name, quantity)
    @order_items[name] += quantity
  end

  def get_items
    return @order_items
  end

  def display
    puts
    if @order_items.length > 0
      # print the order
      puts "Thank you! Here is your order:"
      puts "------------------------------"
      @order_items.each do |item_name,quantity|
        puts "#{quantity} #{item_name}"
      end
    else
      puts "Your order is empty. Thank you for coming!"
    end
    puts
  end
 
end