class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :set_club, only: [:new, :index, :show, :create, :edit, :update, :destroy]

  def new
    @project = Project.new
  end

  def index
    @projects = Project.all
  end

  def show
  end

  def edit
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to club_project_path(@club, @project)
    else
      redirect_to new_club_project_path
    end
  end

  def update
    if @project.update(project_params)
      redirect_to club_project_path(@club, @project)
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to club_projects_path(@club, @project)
  end

  private
  def set_project
    @project = Project.find(params[:id])
  end

  def set_club
    @club = Club.find(params[:club_id])
  end

  def project_params
    params.require(:project).permit(:name, :description, :location, :due_date)
  end
end
