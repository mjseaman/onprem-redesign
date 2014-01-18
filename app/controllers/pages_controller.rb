class PagesController < ApplicationController
	def index
	end

	def offerings
	end

	def work
		@projects = Project.limit(20)
    @industries = Industry.all
	end

	def team
		@people = Person.limit(50)
		ap @people.size
		@alma_maters = Person.uniques(:alma_mater)
		ap Person.all.size
	end

	def careers
	end

	def contact
	end
end
