class Ingredient < ActiveRecord::Base
	belongs_to :category

  def formatted_time
    return self.created_at.in_time_zone("Pacific Time (US & Canada)").strftime("%A, %B %d at %I:%M %p")
  end

end