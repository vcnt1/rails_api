class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_variables

def set_variables
	if User.exists?(1) 
		@user = User.find(1)
	else
		@user = User.create(saldo: 100)
	end
end

end
