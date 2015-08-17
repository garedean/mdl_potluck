class RenameExpiringAtToExpirationDate < ActiveRecord::Migration
  def change
    rename_column :ingredients, :expiration_date, :expiration_date
  end
end
