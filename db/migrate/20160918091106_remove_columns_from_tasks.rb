class RemoveColumnsFromTasks < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :assignee_id, :integer
    remove_column :tasks, :assigned_by_id, :integer
  end
end
