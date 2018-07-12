json.extract! port_vessel, :id, :port_id, :vessel_id, :last_position_updated_at, :nav_status_code, :created_at, :updated_at
json.url port_vessel_url(port_vessel, format: :json)
