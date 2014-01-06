class PagesController < ApplicationController
	def index
	end

	def offerings
	end

	def work
		@projects = Project.all
    @industries = Industry.all
	end

	def team
	end

	def careers
	end

	def contact
	end
end
