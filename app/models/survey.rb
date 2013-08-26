class Survey < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :questions
  has_many :user_surveys
  has_many :users, through: :user_surveys

  attr_accessible :title, :questions, :creator
end
