json.extract! ais_tracking, :id, :latitude, :longtitude, :heading, :speed_over_ground, :last_ais_updated_at, :nav_status_code, :vessel_id, :course, :collection_type, :created_at, :updated_at
json.url ais_tracking_url(ais_tracking, format: :json)
