class Item
	attr_accessor :name
	attr_accessor :cost
	@@list_of_items = []

	def initialize
		self.name = name
		self.cost = cost
		Item.list_of_items.push(self)
	end

	def display_items
		"#{self.name} : #{self.cost}"
	end

end


class Menu
	attr_accessor :menu_data

	def initialize
		self.menu_data = []
	end

	def add_item *item_list
		item_list.each do |item|
			new_item = Item.new
			new_item.name = item[:name]
			new_item.cost = item[:cost]
			self.menu_data.push(new_item)
		end
	end
	def remove_item name
		self.menu_data.delete_if do |item|
			item.name == name
		end
	end

	def user_add
		puts "Add items to our menu"
		hash = {}
		keep_adding = true
		while keep_adding
			puts "Current Menu"
			puts self.menu_data
			puts "Name:"
			hash[:name] = gets.chomp
			puts "Cost:"
			hash[:cost] = gets.chomp
			self.add_item(hash)
			puts "Add another item? y/n"
			answer = gets.chomp
			if answer == 'n'
				keep_adding = false
			end
		end
	end
end

my_menu = Menu.new

item1 = {
	name: "Omelet",
	cost: 5,
}

item2 = {
	name: "Coffee",
	cost: 2,
}

my_menu.add_item(item1, item2)

p my_menu.menu_data

