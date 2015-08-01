class ClubsController < ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy, :join]
  before_action :require_user, only: [:new]

  def index
    @club = Club.all
  end

  def new
    @club = Club.new
  end

  def show
    @club = Club.find(params[:id])
  end

  def create
    @club = Club.new(club_params)

    if @club.save
      UserClub.create(club:@club, user: current_user)
      redirect_to club_path(@club)
    else
      flash[:error] = 'An error occured!'
      redirect_to new_club_path
    end
  end

  def join
    UserClub.create(club:@club, user:current_user)
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
