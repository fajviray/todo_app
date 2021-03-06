class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.references :project, foreign_key: true
      t.references :member, foreign_key: true
      t.text :note

      t.timestamps
    end
  end
end
