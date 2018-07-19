require_dependency "whodat/application_controller"

module Whodat
  class UsersController < ApplicationController
    def new
      @user = User.new params[:user]
    end

    def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to root_path, notice: 'Successfully created user.'
      else
        flash[:error] = 'An error occurred. Please try again.'
        redirect_to '/signup'
      end
    end

    def update
    end

    def destroy
    end

private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  end
end
