class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.belongs_to :survey, null: false
      t.string :question_text, null: false, index: true

      t.timestamps
    end
  end
end
