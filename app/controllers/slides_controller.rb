class SlidesController < ApplicationController
  def index
    @slides = Slide.all.shuffle
  end

  def show
    @slide = Slide.find(params[:id])
  end

  def new
    @slide = Slide.new
  end

  def create
    @slide = Slide.new(params[:slide])
    if @slide.save
      redirect_to @slide, :notice => "Successfully created slide."
    else
      render :action => 'new'
    end
  end

  def edit
    @slide = Slide.find(params[:id])
  end

  def update
    @slide = Slide.find(params[:id])
    if @slide.update_attributes(params[:slide])
      redirect_to @slide, :notice  => "Successfully updated slide."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @slide = Slide.find(params[:id])
    @slide.destroy
    redirect_to slides_url, :notice => "Successfully destroyed slide."
  end
end
