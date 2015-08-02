class SessionsController < ApplicationController
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
      redirect_to first_tag_page_path(@tag, @club)
    
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end 

  def causes
  end
end
