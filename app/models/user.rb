class User < ActiveRecord::Base
  attr_accessible :username,:name, :password, :password_confirmation
  validates :username , presence: true, length: {maximum: 20},uniqueness:{case_sensitive: false}
  validates :name, presence: true,length: {maximum: 30}
  has_secure_password
  validates :password, presence: true, length: { in: 6..24 }
  validates :password_confirmation, presence: true
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  before_save { username.downcase! }
  before_save :create_remember_token
  after_validation { self.errors.messages.delete(:password_digest) }
end

private

def create_remember_token
    self.remember_token= SecureRandom.urlsafe_base64
  end