class RemoveParentIdFromLocations < ActiveRecord::Migration
  def change
    remove_column :locations, :parent_id, :integer
  end
end
