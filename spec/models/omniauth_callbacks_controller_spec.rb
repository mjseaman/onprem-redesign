# require 'spec_helper'

# describe User::OmniauthCallbacksController do
# 	before :each do
# 		request.env["devise.mapping"] = Devise.mappings[:user]
# 	end
# 	describe ".create" do
# 		it "should redirect back to sign_up page with an error when omniauth.auth is missing" do
# 			@controller.stub!(:env).and_return({"some_other_key" => "some_other_value"})
# 			get :facebook
# 			flash[:error].should be
# 			flash[:error].should match /Unexpected response from\./
# 			response.should redirect_to new_user_registration_url
# 		end

# 		it "should redirect back to sign_up page with an error when provider is missing" do
# 			stub_env_for_omniauth(nil)
# 			get :facebook
# 			flash[:error].should be
# 			flash [:error].should match /Provider information is missing/
# 			response.should redirect_to new_user_registration url
# 		end
# 	end
# end