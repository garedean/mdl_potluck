class Ingredient < ActiveRecord::Base
	after_save :update_descendants_count
	after_destroy :update_descendants_count
	after_update :update_descendants_count

	belongs_to :category
	belongs_to :location
	belongs_to :cart
	validates_presence_of :expiration_date
	scope :unused, -> { where(used_on: nil) }

	def name
			category.name
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

	def self.expiring_soon
		order(expiration_date: :asc).limit(500)
	end

	def update_descendants_count
		update_category_descendants_count
		update_location_descendants_count
	end

	def update_category_descendants_count
		(category.ancestors << category).each do |category|
			category.update(descendants_count: category.descendants_count_helper)
		end
	end

	def update_location_descendants_count
		if location.class != NullLocation
			(location.ancestors << location).each do |location|
				location.update(descendants_count: location.descendants_count_helper)
			end
		end
	end

end
