class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @tasks = Task.new(task_params)
    @tasks.save
    redirect_to tasks_path
  end

  def edit
    @tasks = Task.find(params[:id])
  end

  def update
    raise
    tasks = Task.find(params[:id])
    tasks.update(task_params)
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :rating)
  end
end
