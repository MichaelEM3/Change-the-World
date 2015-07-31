class ClubsController < ApplicationController
  def new
    @club = Club.new
  end

  def index
    @club = Club.all
  end

  def create

    @club = Club.new(club_params)
    @user.clubs = current_user
    if @club.save
      redirect_to club_path(@club)
    else
      flash[:error] = 'An error occured!'
    end
  end

  def show
    @club = Club.find(params[:id])
  end

  private
  def club_params
    params.require(:club).permit(:title, :description, :image, :location, :tag_list)
  end

end
