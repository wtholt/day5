class Item
	attr_accessor :name
	attr_accessor :cost

	def initialize
		self.name = name
		self.cost = cost
	end

	def menu_item
		self.name + " " + "$" + self.cost.to_s
	end
end

class Menu
	attr_accessor :items
	attr_accessor :name
	attr_accessor :orders

	def initialize 
		self.items = []
	end

	def display_menu
		p self.items
	end

	def add_item *item_list
		item_list.each do |item|
			new_item = Item.new
			new_item.name = item[:name]
			new_item.cost = item[:cost]
			self.items.push(new_item)
		end
	end

	def remove_item name
		self.items.delete_if do |item|
			item.name == name
		end
	end

	def populate_menu
		puts "Add items to Menu"
		hash = {}
		keep_adding = true
		while keep_adding
			puts "Current Menu"
			p self.items
			puts "Name: "
			hash[:name] = gets.chomp
			puts "Cost: "
			hash[:cost] = gets.chomp.to_s
			self.add_item(hash)
			puts "Add another item y/n?"
			answer = gets.chomp
			if answer == 'n'
				keep_adding = false
				p self.items
			end
		end
	end
end

breakfast_menu = Menu.new

item1 = {
	name: "Coffee",
	cost: 2.0
}

item2 = {
	name: "Granola",
	cost: 5.5
}

item3 = {
	name: "Pancakes",
	cost: 7.5
}

breakfast_menu.add_item(item1, item2, item3)



		

	
# breakfast_menu.remove_item("Coffee")

# breakfast_menu.remove_item("Granola")

# breakfast_menu.populate_menu



