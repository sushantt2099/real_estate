class User < ActiveRecord::Base
	before_create { create_remember_token }

	validates :user_name, presence: true
	validates :password_digest, presence: true
	has_secure_password

	def User.new_remember_token
    	SecureRandom.urlsafe_base64
  	end

  	def User.digest(token)
    	Digest::SHA1.hexdigest(token.to_s)
  	end

	private

	   	def create_remember_token
      		self.remember_token = User.digest(User.new_remember_token)
    	end
end
