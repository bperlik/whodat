require_dependency "whodat/application_controller"

module Whodat
  class SessionController < ApplicationController

    def new
      redirect_to dashboard_path if user_signed_in?
    end

    def create
      user = Whodat::User.find_by( email: session_ params[:email])
      if user && user.authenticate(session_params[:password])
        sign_in(user)
        redirect_to dashboard_path, notice: "Successfully logged in"
      else
        flash[:notice] = "Invalid email or password. Please try again."
        render :new
    end

    def destroy
      sign_out
      redirect_to new_session_path
    end

    private

    def session_params
      params.require(:user).permit( :email, :password)
    end
  end
end
