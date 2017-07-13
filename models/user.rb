class User < ActiveRecord::Base

	has_secure_password
	
	validates :email, presence: true, uniqueness: true

	validates :location, presence: true
	
	validates :name, presence: true

	validates :phone, presence: true, uniqueness: true
	
end