class AddReferencesToTasks < ActiveRecord::Migration[5.0]
  def change
    add_reference :tasks, :assignee, foreign_key: true
    add_reference :tasks, :assignor, foreign_key: true
  end
end
