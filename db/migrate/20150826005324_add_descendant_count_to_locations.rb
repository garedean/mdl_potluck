class AddDescendantCountToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :descendant_count, :integer
  end
end
