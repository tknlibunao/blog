class Article < ApplicationRecord
	validates :title, :author, :content, presence: true
	
	def details
		"#{title} - #{author}"
	end
end
