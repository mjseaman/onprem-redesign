class PeopleController < ApplicationController
  before_filter :authenticate_user!
  def index
    @people = Person.find(:all, :order => "last_name ASC")
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(params[:person])
    if @person.save
      redirect_to @person, :notice => "Successfully created person."
    else
      render :action => 'new'
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    # params.require(:transaction).permit(:name, school_ids => [])
    if @person.update_attributes(params[:person])
      redirect_to @person, :notice  => "Successfully updated person."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to people_url, :notice => "Successfully destroyed person."
  end
end
