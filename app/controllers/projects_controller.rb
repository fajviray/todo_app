class ProjectsController < ApplicationController


  def index
  	@projects = Project.all.reverse_order
  end

  def new
  	@project = Project.new
  	respond_to do |f|
  		f.js
  	end
  end

  def create
  	@project = Project.new(permitted_params)

  	respond_to do |f|
      if @project.save
        f.js
      else
        f.js { render js: "alert('error');" }
      end
    end

  end

  def edit
  	@project = Project.find(params[:id])
  	@tasks = @project.tasks
  	respond_to do |f|
  		f.js
  	end
  end

  def update
  	@project = Project.find(params[:id])

  	respond_to do |f|
  		if @project.update(permitted_params)
	  		f.js
	  	end
  	end
  end

  def destroy
  	@project = Project.find(params[:id])

  	respond_to do |f|
  		if @project.destroy
	  		f.js
	  	else
	  		f.js { render js: "alert('error');" }
	  	end
  	end
  end

  private
  	def permitted_params
  		params.require(:project).permit(
        :title,
        :description
      )
  	end
end
