class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :set_project, only: [:index, :create, :new, :edit, :update, :destroy]

  def new
    @task = Task.new
  end

  def index
    @tasks = Task.all
  end

  def show

  end

  def edit
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to club_project_path(@project.club , @project)
    else
      redirect_to project_tasks_path(@project)
    end
  end

  def update
    if @task.update(task_params)
      redirect_to club_project_path(@project.club, @project)
    end
  end

  def destroy
    @task.destroy
    redirect_to club_project_path(@project.club, @project)
  end


  private

  def set_task
    @task = Task.find(params[:id])
  end

  def set_project
    @project = Project.find(params[:project_id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :due_date, :completed, :project_id)
  end
end
