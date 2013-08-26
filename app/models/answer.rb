class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  belongs_to :possible_answer

  attr_accessible :answer_text, :possible_answer, :question, :user
end
