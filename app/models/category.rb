class Category < ActiveRecord::Base
	# include routes for use in #hierarchy_link
	include Rails.application.routes.url_helpers

	has_many :children, class_name: "Category", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Category"

	has_many :ingredients

	def hierarchy_link(category, item, classes)
		if children.any?
			helpers.link_to name, category_path(item), class: classes
		else
			helpers.link_to name, new_category_ingredient_path(category, item), class: classes
		end
	end

	# include #link_to for use in #hierarchy_link
	def helpers
		ActionController::Base.helpers
	end
end
