class TasksController < ApplicationController

	def new
		@project = Project.find(params[:project_id])
  	@task = @project.tasks.new
	end

end
