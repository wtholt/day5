class Item
	attr_accessor :name
	attr_accessor :cost
	attr_accessor :id

	def initialize
		self.name = "Default"
		self.cost = 0
		self.id = 0
	end

	def display_item
		puts "#{self.name}" + "-" + "#{self.cost}"
	end

end

class Menu
	attr_accessor :items

	def initialize
		self.items = []
	end

	def display_menu
		items.each do |item|
			puts item.display_item
		end
	end

	def remove id
		self.items.delete_if do |item|
			item.id == id
		end
	end
end

class Order
	attr_accessor :orders

	def initialize 
		self.orders = []
	end

	def add_orders name
		self.orders = self.items.select do |item|
			item.name == name
		end
	end

	def display_orders
		orders.each do |order|
			puts order.display_item
		end
	end
end

item1 = Item.new
item1.name = "Granola"
item1.cost = 5
item1.id = 1

item2 = Item.new
item2.name = "Coffee"
item2.cost = 2
item2.id = 2

item3 = Item.new
item3.name = "Pancakes"
item3.cost = 7
item3.id = 3

item4 = Item.new
item4.name = "Omelet"
item4.cost = 7
item4.id = 4


breakfast = Menu.new

breakfast.items.push(item1, item2, item3, item4)


breakfast.display_menu

new_order = Order.new

new_order.add_orders("Coffee")
new_order.display_orders

