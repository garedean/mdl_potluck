class Category < ActiveRecord::Base
	#has_many :children, class_name: "Category", foreign_key: "parent_id"
  #belongs_to :parent, class_name: "Category"

	has_ancestry
	has_many :ingredients
end
