class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :set_club, only: [:new, :index, :show, :create]

  def new
    @project = Project.new
  end

  def index
    @projects = Project.all
  end

  def show
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to club_project_path(@club, @project)
    else
      redirect_to new_club_project_path
    end
  end

  def destroy
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
