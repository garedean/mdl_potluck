class Category < ActiveRecord::Base
	has_many :ingredients, dependent: :destroy
	validates_presence_of :name
	has_ancestry

	def item_count
		ingredients.size
	end
end
