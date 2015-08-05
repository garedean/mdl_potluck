class Category < ActiveRecord::Base
	# include routes for use in #hierarchy_link
	include Rails.application.routes.url_helpers

	has_many :children, class_name: "Category", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Category"

	has_many :ingredients

	def hierarchy_link(link_type = nil, category, item, classes)
		if link_type == :store
			if children.any?
				helpers.link_to name, store_category_path(item), class: classes
			else
				helpers.link_to name, new_store_category_ingredient_path(category), class: classes
			end
		else
			if children.any?
				helpers.link_to name, category_path(item), class: classes
			else
				helpers.link_to name, category_ingredients_path(item), class: classes
			end
		end
	end

	# include #link_to for use in #hierarchy_link
	def helpers
		ActionController::Base.helpers
	end
end
