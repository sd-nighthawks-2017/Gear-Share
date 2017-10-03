class TasksController < ApplicationController

def index
	@tasks = Task.all
	@task = Task.new
	#@task.user_id = current_user.id
end 

def new
	@task = Task.new
end 

def create
	@task = Task.new(task_params)
	@task.user_id = current_user.id

	if @task.save
		redirect_to tasks_path
	else 
		render :new
	end  
end 

def show
	@task = Task.find(params[:id])
end

def edit
	@task = Task.find(params[:id])
end 

def udpate
	@task = Task.update(task_params)
end 

def destroy
	@task = Task.find(params[:id])
	@task.destroy

	redirect_to action: "index"
end

private

def task_params
	params.require(:task).permit(:content, :user_id) 
end 
end 