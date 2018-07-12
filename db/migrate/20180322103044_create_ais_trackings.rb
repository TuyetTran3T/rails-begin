class CreateAisTrackings < ActiveRecord::Migration[5.1]
  def change
    create_table :ais_trackings do |t|
      t.float :latitude
      t.float :longtitude
      t.integer :heading
      t.float :speed_over_ground
      t.timestamp :last_ais_updated_at
      t.integer :nav_status_code
      t.integer :vessel_id
      t.float :course
      t.integer :collection_type

      t.timestamps
    end
  end
end
