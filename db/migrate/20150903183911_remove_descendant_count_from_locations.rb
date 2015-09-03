class RemoveDescendantCountFromLocations < ActiveRecord::Migration
  def change
    remove_column :locations, :descendant_count, :integer
  end
end
