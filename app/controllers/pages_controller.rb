class PagesController < ApplicationController
	def index
	end

	def careers
		# render 'careers'
	end

	def work
		@projects = Project.all
    @industries = Industry.all
		# render 'projects/index'
	end
end
