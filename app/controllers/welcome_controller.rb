class WelcomeController < ApplicationController
  # before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    # @user = User.new
    # render template: "welcome/index.html.haml", layout: "aplication"
  end
  
  def login
    user_name = params[:user][:user_name]
    password = params[:user][:password]
    user = User.find_by(user_name: user_name, password: password)
    # logger.debugger "User {@user}"
    if user
      redirect_to '/users'
    else
      redirect_to '/users/new'
    end
    
  end
end

