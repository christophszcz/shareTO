class ItemsController < ApplicationController

	def index
		user_id = params[:user_id].to_i
		user = User.find(user_id)
		user_items = user.items 
		if user && user.items.count > 0
			@items = user_items
		else 
			render 'errors/you_have_no_items'
		end
	end

	def new	
		@item = Item.new
	end

	def create
		user_id = params[:user_id].to_i
		user = User.find(user_id)
		item_name = params[:item][:name]
		item_condition = params[:item][:condition]
		price = params[:item][:price].to_f
		description = params[:item][:description]

		item = user.items.new(name: item_name, 
			condition: item_condition, 
			description: description, 
			price: price)

		if item.save
			redirect_to item_path(user_id: user_id, 
				id: item.id)
		else 
			render 'errors/cannot_create_item'
		end
	end


	def show
		user_id = params[:user_id].to_i
		user = User.find(user_id)
		item_id = params[:id]
		@item = user.items.find(item_id)
	end

	def success
	end
end
