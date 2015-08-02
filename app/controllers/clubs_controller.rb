class ClubsController < ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy, :join, :unjoin]
  before_action :require_user, only: [:new]

  def index
    @clubs = Club.all
    # if params[:search]
    #   @club = Club.search(params[:search]).order("created_at DESC")
    # else
    #   @club = Club.all.order('created_at DESC')
    # end
  end

  def new
    @club = Club.new
  end

  def show
    @club = Club.find(params[:id])
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
    UserClub.create(club:@club, user:current_user, role: 'user')
    redirect_to @club
  end

  def unjoin
    UserClub.find_by(club:@club, user:current_user).destroy
    redirect_to @club
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
    params.require(:club).permit(:title, :description, :image, :location, :tag_list)
  end

end
