class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :locations, :city_or_CMA, :nearest_area
  end
end
