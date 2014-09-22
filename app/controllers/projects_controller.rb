class ProjectsController < ApplicationController
  def new
    if !signed_in?
      redirect_to(root_url)
    else
      @project= current_user.projects.new
    end
  end
  
  def index
    @project= current_user.projects.new
    @project.name=" "
    @user_projects = current_user.projects
  end
  
  def create
    name = "Project #{current_user.projects.count+1}"
    @project = current_user.projects.build(name: name)
    if @project.save
      flash[:success] = "Project created!"
      redirect_to todolists_path
    else
      flash[:error] = @project.errors.full_messages
      redirect_to todolists_path
    end
  end
  
  private
    def correct_user
      @project = current_user.projects.find_by(id: params[:id])
      redirect_to root_url if @project.nil?
    end
    
    def project_params
      params.require(:project).permit(:name)
    end
    

end
