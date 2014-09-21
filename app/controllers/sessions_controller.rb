require 'constraint/session_constraint'
require 'constraint/user_constraint'


class SessionsController < ApplicationController
	skip_before_filter :verify_authenticity_token, only: [:create]
	include SessionsHelper
	include SessionsHelper
	before_action :signed_in_user
	
	def new
		
	end

	def create
		begin
			@user = User.find_by_user_name( params[:session][:email] )
			if @user && @user.authenticate(params[:session][:password])
				#save token in the database and in the cookie
				@authentication_token = signin_user(@user)
				save_cookie_and_redirect_to_current_user(@authentication_token)
				return
			else
				#user does not exists
				redirect_to new_session_path
			end
		rescue
			puts "excetption"
			redirect_to new_session_path
		end
	end

	def destroy
		begin	
			sign_out current_user
			redirect_to root_url
		rescue
			redirect_to root_url
		end
	end

	private

		def save_cookie_and_redirect_to_current_user authentication_token
			cookies.permanent[SessionConstraint.USER_AUTHENTICATION_TOKEN] = authentication_token
			redirect_to '/dashboards/show'
			
		end

end
