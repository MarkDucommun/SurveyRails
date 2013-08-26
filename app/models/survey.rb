class Survey < ActiveRecord::Base
  has_many :questions
  has_many :user_surveys
  has_many :users, through: :user_surveys
  belongs_to :creator, class_name: "User"
end
