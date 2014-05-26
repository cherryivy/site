class User < ActiveRecord::Base
  has_secure_password

  before_save do 
  	self.email = email.downcase
  	self.login = login.downcase 
  end

  validates :name,  presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :login, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
end
