class UserState < ActiveRecord::Migration
  def change
  	add_column :users, :state, :string, :default => "store"
  end
end
