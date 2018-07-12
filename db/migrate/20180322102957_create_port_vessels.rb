class CreatePortVessels < ActiveRecord::Migration[5.1]
  def change
    create_table :port_vessels do |t|
      t.integer :port_id
      t.integer :vessel_id
      t.datetime :last_position_updated_at
      t.integer :nav_status_code

      t.timestamps
    end
  end
end
