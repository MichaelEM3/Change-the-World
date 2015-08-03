class UserClubsController < ApplicationController

  def new
    @user_club = UserClub.new
  end

  def destroy
    @user_club.destroy
  end

  def create
    user = current_user
    club = @club
    @user_club = UserClub.new(user_id:user.id, club_id:@club.id)
    # @user_club.save
    if @user_club.save
      redirect_to :back, notice: "Created user"
    else
      render action: 'new'
    end
  end

  private
  def user_clubs_params
    params.require(:user_club).permit(:user_id, :club_id)
  end
end
