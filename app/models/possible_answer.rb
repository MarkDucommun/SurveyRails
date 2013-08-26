class PossibleAnswer < ActiveRecord::Base
  belongs_to :question
  has_many :users, through: :question
end
