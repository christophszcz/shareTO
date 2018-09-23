class Search
	def self.look_for_items(query) 
		return Item.where("name ilike ?", "%#{query}%") + Item.where("description ilike ?", "%#{query}%")
	end
end