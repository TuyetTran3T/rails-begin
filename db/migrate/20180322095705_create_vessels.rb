class CreateVessels < ActiveRecord::Migration[5.1]
  def change
    create_table :vessels do |t|
      t.integer :status
      t.string :mmsi
      t.string :imo
      t.string :name
      t.string :callsign
      t.string :vessel_type
      t.string :vessel_class
      t.integer :company_id
      t.integer :line_id
      t.integer :raw_data
      t.string :slug
      t.boolean :active
      t.jsonb :hello

      t.timestamps
    end
  end
end
