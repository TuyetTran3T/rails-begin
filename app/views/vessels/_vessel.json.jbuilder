json.extract! vessel, :id, :status, :mmsi, :imo, :name, :callsign, :vessel_type, :vessel_class, :company_id, :line_id, :raw_data, :slug, :active, :created_at, :updated_at
json.url vessel_url(vessel, format: :json)
