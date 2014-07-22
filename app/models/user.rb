class User < ActiveRecord::Base
	has_secure_password
	has_many :articles
	validates :email, uniqueness: true, presence: true
	validates :name, presence: true
	
end
