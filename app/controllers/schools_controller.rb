class SchoolsController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def show
  end

  def new
  end

  def create
    if @school.save
      redirect_to @school, :notice => "Successfully created school."
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @school.update_attributes(params[:school])
      redirect_to @school, :notice  => "Successfully updated school."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @school.destroy
    redirect_to schools_url, :notice => "Successfully destroyed school."
  end
end
