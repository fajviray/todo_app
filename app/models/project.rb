class Project < ApplicationRecord
	has_many :tasks, dependent: :destroy
	has_many :members, through: :tasks
	
end
