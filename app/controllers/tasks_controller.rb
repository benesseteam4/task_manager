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
  end
  
  def show
  end
  
  def create
  end
  
  def destroy
  end
end
