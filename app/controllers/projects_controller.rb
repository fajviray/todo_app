class ProjectsController < ApplicationController


  def index
  	@projects = Project.all.reverse_order
  end

  def new
  	@project = Project.new
  end

  def create
  	@project = Project.new(permitted_params)
    @project.save
  end

  def edit
  	@project = set_project(params[:id])
  end

  def update
  	@project = set_project(params[:id])

    @project.update(permitted_params)
  end

  def destroy
  	@project = set_project(params[:id])

  	@project.destroy
  end

  private

    def set_project(id)
      project = Project.find(id)
    end

  	def permitted_params
  		params.require(:project).permit(
        :title,
        :description
      )
  	end
end
