class TasksController < ApplicationController

	def index
		@tasks = Task.where(user_id: current_user.id)
		@task = Task.new
	end

	def new
		@task = Task.new
	end

	def create
		@task = Task.create(task_params)
		@task.user_id = current_user.id

		if @task.save
			respond_to do |f|
				f.html { redirect_to tasks_path }
				f.js
			end
		else
			render :new
		end
	end

	def destroy
		@task = Task.find(params[:id])

	 if @task.destroy
		respond_to do |f|
			f.html { redirect_to tasks_path }
			f.js
		end
	 end

	end

	private

	def task_params
		params.require(:task).permit(:content, :user_id)
	end
end
