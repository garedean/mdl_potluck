class Category < ActiveRecord::Base
	has_many :ingredients
	validates_presence_of :name
	has_ancestry
end
