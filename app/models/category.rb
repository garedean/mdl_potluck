class Category < ActiveRecord::Base
	has_many :children, class_name: "Category", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Category"

	has_many :ingredients

	def hierarchy_link
		if has_children
			helpers.link_to name, category_path(item)
		else
			helpers.link_to name, new_ingredient_path
		end
	end

	def helpers
		ActionConroller::Base.helpers.link_to
	end
end
