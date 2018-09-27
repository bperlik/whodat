require_dependency "whodat/application_controller"

module Whodat
  class DashboardController < ApplicationController
  #  before_action :authenticate_user!

    helper_method :current_user, :user_signed_in?
    
    def index
    end
  end
end
