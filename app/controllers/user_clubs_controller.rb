class UserClubsController < ApplicationController
  
  def new
    @user_club = UserClub.new
  end

  def create
    @user_club = UserClub.new(user_clubs_params)
    # @user_club.save
    if @user_club.save
      redirect_to new_clubs_path, notice: "Created user"
    else
      render action: 'new'
    end
  end

  def destroy
    @user_club.destroy
  end

  private
  def user_clubs_params
    params.require(:user_club).permit(:user_id, :club_id)
  end
end
