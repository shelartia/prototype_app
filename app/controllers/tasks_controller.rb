class TasksController < ApplicationController
  def new
  end
  
  def create
    project_id = params[:task][:project_id]
    name = params[:task][:name]
    @task_new = current_user.projects.find(project_id).tasks.build(name: name)
    if @task_new.save
      @projects = current_user.projects
      @task=Task.new
      respond_to do |format|
        format.html {redirect_to todolists_path}
        format.js 
      end
    else
      redirect_to todolists_path
    end
  end
  
end
