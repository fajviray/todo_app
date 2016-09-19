class Task < ApplicationRecord
  belongs_to :project
  belongs_to :member

  belongs_to :assignee, :class_name => 'Member'
  belongs_to :assignor, :class_name => 'Member'
end
