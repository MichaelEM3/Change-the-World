class ClubsController < ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy, :join, :unjoin]
  before_action :require_user, only: [:new]
  before_action :require_club_admin, only: [:destroy, :update, :edit]

  def index
    @users = User.all
    @club = Club.all
    @clubs = current_user.clubs
    @activities = PublicActivity::Activity.order("created_at desc")
    if params[:search]
      @club = Club.search(params[:search]).order("created_at DESC")
    else
      @club = Club.all.order('created_at DESC')
    end
  end

  def new
    @club = Club.new
  end

  def show
    @club = Club.find(params[:id])
    @story= Story.new
    @stories = @club.stories.page(params[:page]).per(3)
    @commentary = Commentary.new
  end

  def edit
  end

  def create
    @club = Club.new(club_params)

    if @club.save
      UserClub.create(club:@club, user: current_user, role: "admin")
      redirect_to club_path(@club)
    else
      flash[:error] = 'An error occured! Please re-enter information.'
      redirect_to new_club_path
    end
  end

  def update
    if @club.update(club_params)
      redirect_to @club, notice: 'Club was successfully created.'
    else
      render :edit
    end
  end

  def destroy
    @club.destroy
    respond_to do |format|
      format.html { redirect_to clubs_url, notice: 'Club was successfully destroyed.' }
    end
  end

  def join
    if current_user.nil?
      redirect_to '/signup'
    else
      UserClub.create(club:@club, user:current_user, role: 'user')
      redirect_to @club
    end
  end

  def unjoin
    UserClub.find_by(club:@club, user:current_user).destroy
    redirect_to @club
  end

  private
  def set_club
    @club = Club.find(params[:id])
  end

  def club_params
    params.require(:club).permit(:title, :description, :image, :location, :tag_list, :tag_id, :thumbtag)
  end

end
