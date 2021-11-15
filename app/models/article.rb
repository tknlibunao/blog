class Article < ApplicationRecord
	validates :title, :author, :content, presence: true
	
	def details
		"#{title} by #{author}"
	end
end
