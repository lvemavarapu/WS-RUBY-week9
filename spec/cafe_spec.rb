require_relative '../menu_item'
require_relative '../menu'
require_relative '../order'
require_relative '../cafe'

describe MenuItem do
    it "should create a menu item with name and price" do
        name = "latte"
        price = 4.00
        item = MenuItem.new(name, price)
        expect(item.name).to eq(name)
        expect(item.price).to eq(price)
end
end
describe Menu do
    it "should add an item to the menu" do
        menu = Menu.new
        name = "latte"
        price = 4.00
        menu.add_item(name, price)
        expect(menu.menu_items.length).to be(1)
    end
    it "item shoud have expected price" do
        menu = Menu.new
        name = "latte"
        price = 4.00
        menu.add_item(name, price)
        expect(menu.get_price(name)).to eq(price)
    end

end
describe Order do
    it "should add an item to the order" do
        order= Order.new
        name = "latte"
        quantity = 3
        order.add_item(name, quantity)
        expect(order.get_items().length).to be(1)
    end
    
end

describe Cafe do
	it 'should create a cafe with a name' do
		name = "My cafe"
		menu_items = {}
		cafe = Cafe.new(name, menu_items)
		expect(cafe.name).to eq(name)
	end
	it 'should create a cafe with a menu' do
		name = "My cafe"
		menu_items = {latte: 4.00, tea: 2.00}
		cafe = Cafe.new(name, menu_items)
		expect(cafe.menu.menu_items.length).to be(2)
	end
	it 'should add an item to order' do
		name = "My cafe"
		menu_items = {latte: 4.00, tea: 2.00}
		cafe = Cafe.new(name, menu_items)
		item = "latte"
		quantity = 1
		cafe.add_to_order(item, quantity)
		expect(cafe.get_order().get_items().length).to be(1)
	end
end