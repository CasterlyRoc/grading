class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.string :answer
      t.integer :point_value
      t.references :assignemt, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
