class CreatePossibleAnswers < ActiveRecord::Migration
  def change
    create_table :possible_answers do |t|
      t.string :answer_text, null: false, index: true
      t.belongs_to :question

      t.timestamps
    end
  end
end
