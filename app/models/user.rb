class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation
  validates :name, presence: true,length: {maximum: 30}
  has_secure_password
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end
