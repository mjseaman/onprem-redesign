class PagesController < ApplicationController
	def index
		@slides = Page.where(name: __method__).first.slides.shuffle
	end

	def offerings
	end

	def work
		@projects = Project.limit(20)
    @industries = Industry.all
	end

	def team
		@people = Person.limit(50)
		@schools = School.limit(15)
		@titles = Person.uniques(:title)
		ap Person.all.size
	end

	def careers
		@slides = Page.where(name: __method__).first.slides.shuffle
	end

	def contact
		@slides = Page.where(name: __method__).first.slides.shuffle
	end
end
