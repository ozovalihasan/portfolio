class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    project = Project.new(project_params)
    project[:user_id] = current_user.id

    redirect_to root_path if project.save
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    project = Project.find(params[:id])
    redirect_to root_path if project.update(project_params)
  end

  private

  def project_params
    params.require(:project).permit(:title, :project_image, :source_link, :live_link)
  end
end
