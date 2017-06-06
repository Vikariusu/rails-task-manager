class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    set_default_done
    task = Task.create(task_params)
    # redirect_to task_path(task)
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    set_default_done
    @task = Task.find(params[:id])
    @task.update(task_params)
    # redirect_to task_path(@task)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private
  def set_default_done
   if params[:task][:done] == '1'
     params[:task][:done] = true
   else
    params[:task][:done] = false
   end
  end
  def task_params
    params.require(:task).permit(:name,:done)
  end
end
