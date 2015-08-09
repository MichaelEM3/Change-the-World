class UsersController < ApplicationController
  skip_before_action :require_user, only: [:new, :create, :update, :edit]

  def new
    @user = User.new
  end

  def edit
    @user = current_user
    # redirect_to profile_path
  end

  def index
      # @user = User.find(params[:user_id])
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @clubs = @user.clubs
    @projects = Project.where('club_id IN (?)', @clubs.map(&:id))
    # @user = User.find(params[:name])
    # @user = User.find_by(user_id: user_id)
  end

  def create
    # puts "********"
    # puts params
    # puts+= User.new(user_params)
    @user = User.new(user_params)
    if @user.save

      session[:user_id] = @user.id
      redirect_to root_path
    else
      render action: 'new'
      flash[:error] = 'An error occured!'
    end
  end

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"

      redirect_to user_path
    else
      flash[:error] = 'An error occured!'
    end
  end

  private

  def user_params
    params.require(:user)
    .permit(:username, :name, :email, :password, :password_confirmation, :avatar)
    # strong parameters!
  end
end
