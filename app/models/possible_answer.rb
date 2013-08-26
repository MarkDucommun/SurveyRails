class PossibleAnswer < ActiveRecord::Base
  belongs_to :question
  has_many :users, through: :question

  attr_accessible :answer_text
end
