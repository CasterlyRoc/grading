class AddAssignmentRefToQuestions < ActiveRecord::Migration
  def change
    add_reference :questions, :assignment, index: true, foreign_key: true
  end
end
