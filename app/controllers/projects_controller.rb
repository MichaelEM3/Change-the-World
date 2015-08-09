class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :set_club, only: [:index, :show, :create, :edit, :update, :destroy, :join, :unjoin]
def calendar
    @events = Event.all
  end
  def new
    @project = Project.new
    @club = current_user.clubs.last
    @club_options = set_options()
  end

  def index
    @projects = Project.where(club_id: params[:club_id])
  end


  def show
    @tasks = @project.tasks.page(params[:page]).per(3)
    @task = @project.tasks.new
    @club
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

  def join
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])
    if current_user.nil?
      redirect_to '/signup'
    else
      UserClub.create(club: @project.club, user:current_user, task: @task)
      redirect_to club_project_path(@project.club, @project)
    end
  end

  def unjoin
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])
    UserClub.find_by(club: @project.club, user:current_user, task: @task).destroy
    redirect_to club_project_path(@project.club, @project)
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
