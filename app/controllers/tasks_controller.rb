class TasksController < ApplicationController
  def index
    if teacher_signed_in?
      @email = current_teacher.email
    elsif student_signed_in?
      @email = current_student.email
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
