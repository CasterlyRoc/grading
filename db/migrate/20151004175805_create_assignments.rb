class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :due_date
      t.integer :tot_points

      t.timestamps null: false
    end
  end
end
