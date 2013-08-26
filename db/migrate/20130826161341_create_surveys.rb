class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.belongs_to :creator, foreign_key: :user_id, null: false
      t.string :title, uniqueness: true, index: true, null: false

      t.timestamps
    end
  end
end
