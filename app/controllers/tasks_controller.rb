class TasksController < ApplicationController
  def index
  end
  
  def new
    @task = Task.new
  end
  
  def show
  end
  
  def create
    @task = Task.new(task_params)
    @task.save
    
    redirect_to @task
  end
  
  def destroy
  end
  
  private
  def task_params
    params.require(:task).permit(:title, :deadline, :duration, :description)
  end
end
