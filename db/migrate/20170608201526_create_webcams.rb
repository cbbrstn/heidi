class CreateWebcams < ActiveRecord::Migration
  def change
    create_table :webcams do |t|
      t.string :name
      t.string :location
      t.string :url
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
