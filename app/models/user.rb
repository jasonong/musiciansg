class User < ActiveRecord::Base
  has_many :roles
  validates_confirmation_of :password
  validates_presence_of :password, :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
end
