class AddColumnsToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :status, :string
    add_column :members, :assignee_id, :integer
    add_column :members, :assigned_by_id, :integer
  end
end
