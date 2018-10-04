require_dependency "whodat/application_controller"

  module Whodat
    class SessionsController < ApplicationController

      def new
      end

      def create
        user = Whodat::User.find_by( email: session_params[:email])
        if user && user.authenticate(session_params[:password])
          create_session(user)
          flash[:notice] = "Welcome, #{user.name}!"
          redirect_to main_app.root_path
        else
          flash[:notice] = "Invalid email or password. Please try again."
          render :new
        end
      end

      def destroy
        destroy_session(current_user)
        flash[:notice] = "You've been signed out, come back soon."
        redirect_to main_app.root_path
      end

      private

      def session_params
        params.require(:session).permit(:name, :email, :password )
      end
    end
  end

