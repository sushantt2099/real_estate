require 'constraint/basic_constraint'

class SessionConstraint < BasicConstraint
	cattr_reader :PAGE_TITLE, :LABEL_SIGN_IN_BUTTON, :USER_AUTHENTICATION_TOKEN


	@@USER_AUTHENTICATION_TOKEN = :user_authentication_token

	@@PAGE_TITLE = "Sign In"

	@@LABEL_SIGN_IN_BUTTON = "Log In"


end