class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :set_club, only: [:index, :show, :create, :edit, :update, :destroy]

  def new
    @project = Project.new
    @club = current_user.clubs.last
    @club_options = set_options()
  end

  def index
    @projects = Project.where(club_id: params[:club_id])

  end

  def show
    @tasks = Task.all
  end

  def edit
    @club = current_user.clubs.last
    @club_options = set_options()
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to club_project_path(@project.club, @project)
    else
      redirect_to new_club_project_path
    end
  end

  def update
    if @project.update(project_params)
      redirect_to club_project_path(@project.club, @project)
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to club_projects_path(@project.club, @project)
  end

  def set_options
    club_options = []
    current_user.clubs.each do |c|
      club_options << [c.title, c.id]
    end
    club_options
  end

  private
  def set_project
    @project = Project.find(params[:id])
  end

  def set_club
    if current_user.clubs.count == 1
      @club = current_user.clubs.last
    end
  end

  def project_params
    params.require(:project).permit(:name, :description, :location, :due_date, :club_id)
  end
end
