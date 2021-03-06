class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers
  has_many :possible_answers

  attr_accessible :question_text
end
