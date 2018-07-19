module Whodat
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :cleanup_dead_session, unless: :session_cleared?
    helper_method :current_user, :user_signed_in?

    def current_user
      @current_user ||= Whodat::User.find_by( id: session[:user_id] )
    end

    def authenticate_user!
      redirect_to new_session_path unless current_user
    end

    def user_signed_in?
      current_user
    end

    def sign_in(user)
      session[:user_id] = user.id
    end

    def sign_out
      session[:user_id] = nil
    end

    private

    def session_cleared?
      user_signed_in? || session[:user_id].nil?
    end

    def cleanup_dead_session
      return unless Whodat::User.find_by( id: session[:user_id] ).nil?
    end
  end
end

