class CreateRegions < ActiveRecord::Migration[5.0]
  def change
    create_table :regions do |t|
      t.string :name
      t.string :image_url
      t.date :begDate
      t.date :endDate

      t.timestamps
    end
  end
end
