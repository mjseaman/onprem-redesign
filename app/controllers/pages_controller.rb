class PagesController < ApplicationController
  
  # Vanity routes for main pages

	def home
		@pages = Page.where('display_order IS NOT NULL').order('display_order ASC')
		@slides = Page.where(name: __method__).first.slides.shuffle
	end

	def about
		@slides = Page.where(name: __method__).first.slides.shuffle
	end

	def offerings
		@slides = Page.where(name: __method__).first.slides.shuffle
	end

	def work
		@slides = Page.where(name: __method__).first.slides.shuffle
		@projects = Project.limit(20)
    @industries = Industry.all
	end

	def team
		@slides = Page.where(name: __method__).first.slides.shuffle
		@pages = Page.limit(50).sort_by!{ |n| n.last_name.downcase }
		@schools = School.order(:name)
		@titles = page.uniques(:title).sort_by!{ |t| t.downcase }
		ap page.all.size
	end

	def careers
		@slides = Page.where(name: __method__).first.slides.shuffle
	end

	def contact
		@slides = Page.where(name: __method__).first.slides.shuffle
	end

	def idc
		@slides = Page.where(name: __method__).first.slides.shuffle
	end

	# Restful routes for editing pages

  def index
    @pages = Page.order('display_order ASC')
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(params[:page])
    if @page.save
      redirect_to @page, :notice => "Successfully created page."
    else
      render :action => 'new'
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      redirect_to @page, :notice  => "Successfully updated page."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to pages_url, :notice => "Successfully destroyed page."
  end
end
