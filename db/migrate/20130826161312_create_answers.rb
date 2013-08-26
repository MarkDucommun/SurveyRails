class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :question, null: false
      t.belongs_to :user, null: false
      t.belongs_to :possible_answer, index: true
      t.text :answer_text, index: true 

      t.timestamps
    end
  end
end
