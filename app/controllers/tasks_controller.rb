class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

	def new
		@project = Project.find(params[:project_id])
  	@task = @project.tasks.new
	end

	def create
		project = Project.find(params[:project_id])
		@task = project.tasks.new(permitted_params)
    @task.member = current_member
    @task.assignor = current_member

    @task.save
	end

  def edit
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.assignor = current_member
    @task.update(permitted_params)
  end

  def destroy
    @task = Task.find(params[:id])

    @task.destroy
  end

  private
  	def permitted_params
  		params.require(:task).permit(
        :status,
        :assignee_id,
        :note
      )
  	end
end
