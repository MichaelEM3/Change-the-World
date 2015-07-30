class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to causes_path, notice: "Created user"
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