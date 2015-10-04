class AddTitleToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :Title, :string
  end
end
