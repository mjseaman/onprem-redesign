class SlidesController < ApplicationController
  load_and_authorize_resource

  def index
    @slides = Slide.all.shuffle
  end

  def show
  end

  def new
  end

  def create
    if @slide.save
      redirect_to @slide, :notice => "Successfully created slide."
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @slide.update_attributes(params[:slide])
      redirect_to @slide, :notice  => "Successfully updated slide."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @slide.destroy
    redirect_to slides_url, :notice => "Successfully destroyed slide."
  end
end
