class SessionsController < ApplicationController
  skip_before_action :require_user
  def new
  end

  def show
    @club = Club.all
    @tag = Tag.all
  end

  def create
    @user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
    if @user
      #logged in, hooray
      session[:user_id] = @user.id #put the current user in the session hash
      redirect_to clubs_path
    else
      render action: 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

  def causes
  end
end
