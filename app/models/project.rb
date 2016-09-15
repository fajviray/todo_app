class Project < ApplicationRecord
	has_many :tasks
	has_many :members, through: :tasks
	
end
