class PeopleController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def index
    @people = Person.find(:all, :order => "last_name ASC")
  end

  def show
  end

  def new
  end

  def create
    if @person.save
      redirect_to @person, :notice => "Successfully created person."
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    # params.require(:transaction).permit(:name, school_ids => [])
    if @person.update_attributes(params[:person])
      redirect_to @person, :notice  => "Successfully updated person."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @person.destroy
    redirect_to people_url, :notice => "Successfully destroyed person."
  end
end
