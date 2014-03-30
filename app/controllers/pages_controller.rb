class PagesController < ApplicationController
  
  # Vanity routes for main pages

	def home
		@pages = Page.where('display_order IS NOT NULL').order('display_order ASC')
		@slides = slides('home')
	end

	def about
		@slides = slides('about')
	end

	def offerings
		@slides = slides('offerings')
	end

	def work
		@slides = slides('work')
		@projects = Project.limit(20)
    @industries = Industry.all
	end

	def team
		@slides = slides('team')
		@people = Person.limit(50).sort_by!{ |n| n.last_name.downcase }
		@schools = School.order(:name)
		@titles = Person.uniques(:title).sort_by!{ |t| t.downcase }
	end

	def careers
		@slides = slides('careers')
	end

	def contact
		@slides = slides('contact')
	end

	def idc
		@slides = slides('idc')
	end

	# Restful routes for editing pages

  def index
    @pages = Page.order('display_order ASC')
    authorize! :index, Page
  end

  def show
    @page = Page.find(params[:id])
    authorize! :show, @page
  end

  def new
    @page = Page.new
    authorize! :new, @page
  end

  def create
    @page = Page.new(params[:page])
    if @page.save
      redirect_to @page, :notice => "Successfully created page."
    else
      render :action => 'new'
    end
    authorize! :create, @page
  end

  def edit
    @page = Page.find(params[:id])
    authorize! :edit, @page
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      redirect_to @page, :notice  => "Successfully updated page."
    else
      render :action => 'edit'
    end
    authorize! :update, @page
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to pages_url, :notice => "Successfully destroyed page."
    authorize! :destroy, @page
  end

  private

  def slides(page_name)
  	page_rel = Page.where(name: page_name)
  	ap page_rel
  	if !page_rel.empty? && !page_rel.first.slides.empty?
  		return page_rel.first.slides.shuffle
  	else
  		nil
  	end
  end
end
