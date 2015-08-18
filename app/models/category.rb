class Category < ActiveRecord::Base
	has_many :ingredients, dependent: :destroy
	validates_presence_of :name
	has_ancestry

	def default_expiration_date
		expires_in = default_expiration || 0
		DateTime.now + expires_in.days
	end
end
