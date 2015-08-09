class Category < ActiveRecord::Base
	has_many :ingredients
	has_ancestry
end
