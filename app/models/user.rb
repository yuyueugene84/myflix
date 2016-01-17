class User < ActiveRecord::Base
  validates_presence_of   :full_name, :email, :password
  validates_uniqueness_of :email

  has_secure_password
end