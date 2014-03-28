class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
  	flash[:error] = "Access denied."
  	redirect_to "/users/login"
  end

  helper :all
end