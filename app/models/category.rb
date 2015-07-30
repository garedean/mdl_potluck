class Category < ActiveRecord::Base
	has_many :ingredients
	has_many :children
end
