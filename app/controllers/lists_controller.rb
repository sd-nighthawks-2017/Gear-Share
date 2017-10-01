class ListsController < ApplicationController

	def index
		@lists = List.all
	end

	def new
		@list = List.new
	end

	def create
		@list = List.create(params[:list])
		@list.user_id = current_user.id

		if @list.save
			redirect_to current_user
		else 
			render 'new'
		end 
	end

	def show
		@list = List.find(params[:id])
		@tasks = @list.tasks
	end

	def edit
		@list = List.find(params[:id])    
	end 

	def update
		@list = List.find(params[:list])

		if @list.update(list_params)
			redirect_to @list
		else
			render 'edit'
		end 
	end 

	def delete
		@list = List.ind(params[:id])
		@list.destroy

		redirect_to lists_path
	end 
end 