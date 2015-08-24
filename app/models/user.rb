class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	validates :name, presence: ture, length: {maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: ture, length: {maximum: 255 },
	          format: { with: VALID_EMAIL_REGEX },
	          uniqueness: { case_sensitive: false }

end
