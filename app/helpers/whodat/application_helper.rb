module Whodat
  module ApplicationHelper
    
    def current_user
      @current_user ||= Whodat::User.find_by( id: session[:user_id] )
    end

    def user_signed_in?
      current_user
    end
  end
end
