class AddDefaultExpirationToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :default_expiration, :date
  end
end
