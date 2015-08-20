class Location < ActiveRecord::Base
  include SharedMethods

  has_many :ingredients
  before_destroy :remove_child_associations
  validates_presence_of :name
  has_ancestry

  private

    def remove_child_associations
      ingredients.each do |ingredient|
        ingredients.delete(ingredient)
      end
    end
end
