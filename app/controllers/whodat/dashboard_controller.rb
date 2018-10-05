require_dependency "whodat/application_controller"
include ApplicationHelper

module Whodat
  class DashboardController < ApplicationController
  #  before_action :authenticate_user!

    helper_method :current_user, :user_signed_in?
    
    def index
      def current_user 
        @current_user ||= Whodat::User.find_by( id: session[:user_id] )
      end
  
      def user_signed_in?
        current_user
      end
    end
  end
end
