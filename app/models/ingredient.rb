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

	def self.expiring_soon
		order(expiring_at: :asc).limit(500)
	end
end
