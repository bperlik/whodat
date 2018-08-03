require_dependency "whodat/application_controller"

module Whodat
  class UsersController < ApplicationController
    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        flash[:notice] = "Welcome, #{@user.name}!"
        create_session(@user)
        redirect_to root_path
      else
        flash[:notice] = "An error occurred. Please try again."
        render :new
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
