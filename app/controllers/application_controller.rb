class ApplicationController < ActionController::Base
  include PublicActivity::StoreController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_user
  helper_method :current_user

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    # hide_action :current_user

    private

    def require_user
      redirect_to '/login' unless current_user
    end

    def require_club_admin
      return redirect_to root_path if current_user.nil?
      redirect_to root_path unless current_user.user_admin_in_club?(params[:id])
    end

    def badges_images
      
    end
end
