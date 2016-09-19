class RemoveColumnsFromMembers < ActiveRecord::Migration[5.0]
  def change
    remove_column :members, :status, :string
    remove_column :members, :assignee_id, :integer
    remove_column :members, :assigned_by_id, :integer
  end
end
