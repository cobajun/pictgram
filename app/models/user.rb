class User < ApplicationRecord
	validates :name, presence: true, length: { maximum: 15 }
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true,format: { with: VALID_EMAIL_REGEX }
	
	VALID_PASSWORD_REGEX = /^(?=.*[a-zA-Z])(?=.*[0-9]).*$/
	validates :password, length: { in: 8..32 },format: { with: VALID_PASSWORD_REGEX, multiline: true}
	
  has_secure_password
  has_many :topics
end
