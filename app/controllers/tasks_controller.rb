class TasksController < ApplicationController
  def index
    if current_user.is_a?(Student)
      @tasks = current_user.tasks
    elsif current_user.is_a?(Teacher)
      @tasks = current_user.tasks
    else
      # 他のユーザータイプが追加された場合に備えての処理
    end
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
