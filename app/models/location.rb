class Location < ActiveRecord::Base
	has_many :ingredients

  def formatted_time
    return self.created_at.in_time_zone("Pacific Time (US & Canada)").strftime("%A, %B %d at %I:%M %p")
  end
end