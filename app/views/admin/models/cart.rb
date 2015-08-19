class Cart < ActiveRecord::Base
  has_many :ingredients
  belongs_to :user

  def add_item(item_to_add)
    ingredients.push(item_to_add)
  end

  def remove_item(item_to_remove)
    ingredients.delete(item_to_remove)
  end
end
