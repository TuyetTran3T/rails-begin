class CreateAisVessalDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :ais_vessal_destinations do |t|
      t.integer :vessel_id
      t.string :destination
      t.float :draught
      t.timestamp :eta

      t.timestamps
    end
  end
end
