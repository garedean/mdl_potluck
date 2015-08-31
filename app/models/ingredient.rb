class Ingredient < ActiveRecord::Base
	before_save :update_location_descendant_counts, :update_category_descendant_counts
	before_destroy :update_location_descendant_counts, :update_category_descendant_counts

	belongs_to :category
	belongs_to :location
	belongs_to :cart

	def self.reset_descendant_counts
		Ingredient.all.each do |ingredient|
			ingredient.update_category_descendant_counts
			ingredient.update_location_descendant_counts
		end
	end

  def formatted_time
    return self.created_at.in_time_zone("Pacific Time (US & Canada)").strftime("%A, %B %d at %I:%M %p")
  end

  def formatted_time_update
    return self.updated_at.in_time_zone("Pacific Time (US & Canada)").strftime("%A, %B %d %I:%M %p")
  end

	def formatted_time_used
		return self.used_on.in_time_zone("Pacific Time (US & Canada)").strftime("%A, %B %d %I:%M %p")
	end

	def formatted_created_at
		return self.created_at.in_time_zone("Pacific Time (US & Canada)").strftime("%A, %B %d %I:%M %p")
	end

  def name
		if category
			category.name
		end
  end

	def location
		# if ingredient is assign ed location, return location object
		if location_id
			super
		# if no location, create NullLocation object which has a #name method that returns 'No location'
		else
			NullLocation.new
		end
	end

	def self.count_all_locations(ingredient)
		Ingredient.where(category_id: ingredient.category.id).size
	end

	def self.count_this_location(ingredient)
		if ingredient.location.class != NullLocation
			Ingredient.where(category_id: ingredient.category.id,
										 	 location_id: ingredient.location.id).size
		end
	end

	def update_location_descendant_counts
		if location.class != NullLocation
			(location.ancestors << location).each do |location|
				descendant_count = count_descendants(location)
				location.update(descendant_count: descendant_count)
			end
		end
	end

	def update_category_descendant_counts
		(category.ancestors << category).each do |category|
			descendant_count = count_descendants(category)
			category.update(descendant_count: descendant_count)
		end
	end

	def count_descendants(ancestor)
		if ancestor.has_children?
			total = 0
			ancestor.subtree.each do |descendant|
				if descendant.is_childless?
					total += descendant.ingredients.size
				end
			end
			return total
		else
			ancestor.ingredients.size
		end
	end

	def self.expiring_soon
		order(expiration_date: :asc).limit(500)
	end
end
