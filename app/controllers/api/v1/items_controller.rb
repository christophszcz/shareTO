class Api::V1::ItemsController < ApplicationController
	def show
		# get /api/v1/items/
		if params[:id].length > 0
			render json: Search.look_for_items(params[:id]) 
		else 
			render json: {status: 'not found', code: 404}
		end
	end
end