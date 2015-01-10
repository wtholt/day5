class Item
	attr_accessor :name
	attr_accessor :cost

	def initialize 
		self.name = "Omelet"
		self.cost = 10
	end

	def menu_item
		self.name + " " + self.cost.to_s
	end

end

class Menu
	attr_accessor :item
	attr_accessor :name

	def initialize
		self.item = []
	end

	def add_item *item_list
		item_list.each do |item|
			new_item = Item.new
			new_item.name = item[:name]
			new_item.cost = item[:cost]
			self.item.push(new_item)
		end
	end

	def remove_item name
		self.item.delete_if do |car|
			item.name == name
		end
	end

	def populate_items
		puts "Add menu items"
		hash = {}
		keep_adding = true
		while keep_adding
			puts "Current Menu:"
			p self.item.flatten
			puts "Name?"
			hash[:name] = gets.chomp
			puts "Cost?"
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

new_menu = Menu.new
new_menu.populate_items










