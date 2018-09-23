class Search
	def self.look_for_items(query) 
		items = Item.where("name ilike ?", "%#{query}%") + Item.where("description ilike ?", "%#{query}%")
		if items.count > 0 then return items else return false end
	end
end