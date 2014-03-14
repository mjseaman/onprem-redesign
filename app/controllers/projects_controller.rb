class ProjectsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def index
    @industries = Industry.all
  end

  def show
  end

  def new
  end

  def create
    if @project.save
      redirect_to @project, :notice => "Successfully created project."
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    ap params
    if @project.update_attributes(params[:project])
      redirect_to @project, :notice  => "Successfully updated project."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_url, :notice => "Successfully destroyed project."
  end
end
