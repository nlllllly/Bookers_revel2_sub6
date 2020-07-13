class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :user_signed_in?


end
