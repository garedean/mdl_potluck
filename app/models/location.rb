class Location < ActiveRecord::Base
  has_many :ingredients
  before_destroy :remove_child_associations
  validates_presence_of :name
  has_ancestry

  def item_count
    ingredients.size
  end

  private

    def remove_child_associations
      ingredients.each do |ingredient|
        ingredients.delete(ingredient)
      end
    end
end
