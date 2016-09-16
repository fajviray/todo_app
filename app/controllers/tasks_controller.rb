class TasksController < ApplicationController

	def new
		@project = Project.find(params[:project_id])
  	@task = @project.tasks.new
	end

	def create
		project = Project.find(params[:project_id])
		@task = project.tasks.new(permitted_params)

    @task.save
	end

  def edit
    @task = Task.find(params[:id])
  end

  private
  	def permitted_params
  		params.require(:task).permit(
        :member_id,
        :note
      )
  	end
end
