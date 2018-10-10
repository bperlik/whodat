require_dependency "whodat/application_controller"

module Whodat
  class DashboardController < ApplicationController

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
