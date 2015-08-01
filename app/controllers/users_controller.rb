class UsersController < ApplicationController
  skip_before_action :require_user, only:[:new, :create]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
       UserClub.create(role: "user")
      session[:user_id] = @user.id
      redirect_to clubs_path, notice: "Created user"
    else
      render action: 'new'
    end
  end

  private
  def user_params
    params.require(:user).
      permit(:username, :name, :email, :password, :password_confirmation)
    #strong parameters!
  end
end
