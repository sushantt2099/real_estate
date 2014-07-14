require 'constraint/session_constraint'
require 'constraint/user_constraint'

class DashboardsController < ApplicationController
	include SessionsHelper
	before_action :signed_in_user
	def show
	end

	private

		def signed_in_user
      		redirect_to new_session_path unless signed_in?
    	end
end
