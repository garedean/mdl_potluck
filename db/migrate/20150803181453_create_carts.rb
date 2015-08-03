class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :ingredient, index: true, foreign_key: true
    end
  end
end
