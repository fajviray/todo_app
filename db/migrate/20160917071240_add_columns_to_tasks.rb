class AddColumnsToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :status, :string
    add_column :tasks, :assignee_id, :integer
    add_column :tasks, :assigned_by_id, :integer
  end
end
