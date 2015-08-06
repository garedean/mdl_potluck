class Ingredient < ActiveRecord::Base
	belongs_to :category
	belongs_to :location
	belongs_to :cart

  def formatted_time
    return self.created_at.in_time_zone("Pacific Time (US & Canada)").strftime("%A, %B %d at %I:%M %p")
  end

  def formatted_time_update
    return self.updated_at.in_time_zone("Pacific Time (US & Canada)").strftime("%A, %B %d %I:%M %p")
  end

  def name
		if category
			category.name
		end
  end

	def location
		# if ingredient is assigned location, return location object
		if location_id
			super
		# if no location, create NullLocation object which has a #name method that returns 'No location'
		else
			NullLocation.new
		end
	end

	def self.expiring_soon
		order(expiring_at: :asc).limit(500)
	end
end
