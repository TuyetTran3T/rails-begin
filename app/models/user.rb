class User < ApplicationRecord

  scope :check_login, ->(user_name) { where('user_name = ?', user_name)}
  scope :order_desc, -> { order("id desc")}
  
  def find_all
    User.where('user_name = #{params[:user_name]}')
  end
  
end

