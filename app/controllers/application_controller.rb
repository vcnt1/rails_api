class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_variables

def set_variables

  @user = User.exists?(1) ? User.find(1) : User.create(saldo: 100)

end

end
