class ArticlesController < ApplicationController
	def index
		#default -> render 'index'
		#but can use this -> render '<another.html.erb>'
		#byebug
		articles = Article.all
		
		#Instance variable sa isang class
		@articles = Article.first
	end
	
	def show
		
	end
end
