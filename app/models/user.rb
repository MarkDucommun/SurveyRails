class User < ActiveRecord::Base
  has_many :user_surveys
  has_many :surveys, through: :user_surveys
  has_many :created_surveys, class_name: "Survey", foreign_key: :creator_id
  has_many :answers

  validates_uniqueness_of :email
  validates_presence_of :name, :email, :password, :password_confirmation

  has_secure_password

  attr_accessible :name, :email, :password, :password_confirmation
end
