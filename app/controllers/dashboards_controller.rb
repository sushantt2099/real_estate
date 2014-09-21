require 'constraint/session_constraint'
require 'constraint/user_constraint'

class DashboardsController < ApplicationController
	include SessionsHelper
	before_action :signed_in_user

	def show
	end

end
