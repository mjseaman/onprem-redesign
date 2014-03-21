class PagesController < ApplicationController

	def index
		@slides = Page.where(name: __method__).first.slides.shuffle
		# expires_in 3.minutes, :public => true
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
		@people = Person.limit(50).sort_by!{ |n| n.last_name.downcase }
		@schools = School.order(:name)
		@titles = Person.uniques(:title).sort_by!{ |t| t.downcase }
		ap Person.all.size
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
end
