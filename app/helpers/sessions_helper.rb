module SessionsHelper
	def signin_user(user)
		random_token = User.new_remember_token
		user.update_attribute(UserConstraint.USER_REMEMBER_TOKEN, User.digest(random_token))
		current_user=user
		random_token
	end

	def signed_in?
		!current_user.nil?
	end

	def current_user=(user)
		@current_user = user
	end

	def current_user
		user_authentication_hash = User.digest(cookies[SessionConstraint.USER_AUTHENTICATION_TOKEN])
		@current_user ||= User.find_by(UserConstraint.USER_REMEMBER_TOKEN => user_authentication_hash)
	end

	def sign_out user
		#delete the cookie
		cookies.delete(SessionConstraint.USER_AUTHENTICATION_TOKEN)
		# update the database to new random token
		random_token = User.new_remember_token
		user.update_attribute(UserConstraint.USER_REMEMBER_TOKEN, User.digest(random_token))
	end
	
end
