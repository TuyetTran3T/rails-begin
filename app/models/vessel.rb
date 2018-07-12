class Vessel < ApplicationRecord
  has_many :ais_trackings
  has_many :ais_vessal_destinations
  has_many :port_vessels
  
  scope :vessel_in_day, -> { where("mmsi = ?", "tuyet")}
  
  def self.getMMSI(ais_trackings)
  
  end
  
  
  validates :imo, :mmsi,
            presence: {message: 'cannot be null'}
  validates :imo,
            uniqueness: {
                scope: :mmsi,
                message: 'cannot be duplicate'}
  
end
