class User < ActiveRecord::Base
	validates :name, presence: ture
	validates :email, presence: ture
end
