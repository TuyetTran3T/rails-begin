class AisTracking < ApplicationRecord
  belongs_to :vessel
  
  validates :heading, presence: true
  
  before_validation :ensure_heading_has_value
  
  private
    def ensure_heading_has_value
      if heading.nil?
        self.heading = "aaaa"
      end
    end
end
