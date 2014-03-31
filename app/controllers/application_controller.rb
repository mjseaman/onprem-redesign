class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
  	flash[:error] = "Please log in to continue."
  	redirect_to "/users/login"
  end

  helper :all
end