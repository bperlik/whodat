require_dependency "whodat/application_controller"

module Whodat
  class SessionController < ApplicationController

    def new
    end

    def create
      user = User.find_by email: params[:login][:email]
      if user && user.authenticate(params[:login][:password]
        session[:user_id] = user.id
        redirect_to root_path, notice: "Successfully logged in"
      else
        flash.now alert = "Invalid email or password. Please try again."
        render :new
    end

    def destroy
      session[:user_id] = nil
      redirect_to root_path, notice "Successfully logged out"
    end
  end
end