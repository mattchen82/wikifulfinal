class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :get_categories
  helper_method :current_user

  def authorize
  	redirect_to(login_url, alert: "Not authorized") if current_user.nil?
  end

  private
  
  def get_categories
    @categories = Category.order(:name)
  end
  
	def current_user
		@current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
	end
	

end