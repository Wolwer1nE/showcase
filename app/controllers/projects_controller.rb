class ProjectsController < ApplicationController

  def show
    @project = Project.find_by_id(params[:id])
    flash.now[:notice] = "Уведомление на странице"
    not_found unless @project.present?
  end

  def new

  end

  def create
    project = Project.new project_params
    if project.save
      redirect_to project_path(project)
    else
      render 'new'
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end

end


