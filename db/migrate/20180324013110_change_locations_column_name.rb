class ChangeLocationsColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :locations, :region_id, :region_name
  end
end
