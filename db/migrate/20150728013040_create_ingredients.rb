class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
    	t.integer  "category_id"
    	t.integer  "location_id"
    	t.datetime "created_at"
    	t.datetime "updated_at"
    	t.datetime "used_on"
    end
    create_table :categories do |t|
    	t.string   "name"
        t.datetime "created_at"
        t.datetime "updated_at"
        t.integer  "lifespan"
    end
    create_table :locations do |t|
    	t.string   "name"
    	t.datetime "created_at"
    	t.datetime "updated_at"
    end	
  end
end
