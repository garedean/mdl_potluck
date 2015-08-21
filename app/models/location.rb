class Location < ActiveRecord::Base
  include SharedMethods

  has_many :ingredients
  before_destroy :remove_child_associations
  validates_presence_of :name
  has_ancestry

  # Returns a tree-like string for locations: Freezer > Back > Top > Right
  def tree_format
    output = []
    ancestors.each do |location|
      output << location.name
    end
    output.join(" > ")
  end

  private

    def remove_child_associations
      ingredients.each do |ingredient|
        ingredients.delete(ingredient)
      end
    end
end
