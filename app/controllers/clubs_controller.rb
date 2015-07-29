class ClubsController < ApplicationController
  def new
    @club = Club.new
  end

  def create
    @club = Club.new(club_params)
  end

  private
  def club_params
    params.require(:title, :description).permit(:image, :location)
  end

end
