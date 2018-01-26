class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :caption
      t.string :region_id
      t.string :image_url
      t.date :date
      t.string :city_or_CMA

      t.timestamps
    end
  end
end
