module AisTrackingsHelper
  def full_title(param = '')
    if param.empty?
      param = "begin with helper"
    end
  end
end
