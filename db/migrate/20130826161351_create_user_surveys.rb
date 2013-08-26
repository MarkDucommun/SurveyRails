class CreateUserSurveys < ActiveRecord::Migration
  def change
    create_table :user_surveys, id: false do |t|
      t.belongs_to :user
      t.belongs_to :survey
      
      t.timestamps
    end
  end
end
