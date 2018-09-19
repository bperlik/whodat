require 'rails_helper'

RSpec.describe Whodat::UsersController, :type => :controller do
  routes { Whodat::Engine.routes }

   #create a hash of attributes to use throughout spec
  let(:new_user_attributes) do
    {
      name: "TestName",
      email: "testemail@test.io",
      password: "password",
      password_confirmation: "password"
    }
  end

  # add tests for new for response & instantiate a new user
  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "instantiates a new user" do
      get :new
      expect(assigns(:user)).to_not be_nil
    end
  end

  # Test for http success when issuing post with new_user_attributes
  describe "POST create" do
    it "returns an http redirect" do
      post :create, :params => { :user => new_user_attributes }  # Riz recommended
      # post :create, users: new_user_attributes
      expect(response).to redirect_to(root_path)
    end

    # Test that users table increases by one
    it "creates a new user" do
      expect{
        post :create, :params => { :user => { 
          name: "TestName",
          email: "testemail@test.io",
          password: "password",
          password_confirmation: "password" } 
        }
       }.to change(Whodat::User, :count).by(1)
    end

    # Test that user.name is set to new name
    it "sets user name properly" do
      post :create, :params => { :user => { 
        name: "TestName",
        email: "testemail@test.io",
        password: "password",
        password_confirmation: "password" } 
      }
      expect(assigns(:user).name).to eq new_user_attributes[:name]
    end

    # Test that user.email is set
    it "sets user email properly" do
      post :create, :params => { :user => { 
        name: "TestName",
        email: "testemail@test.io",
        password: "password",
        password_confirmation: "password" } 
      }
      expect(assigns(:user).email).to eq new_user_attributes[:email]
    end

    # Test that user.password is set
    it "sets user password properly" do
      post :create, :params => { :user => { 
        name: "TestName",
        email: "testemail@test.io",
        password: "password",
        password_confirmation: "password" } 
      }
      expect(assigns(:user).password).to eq new_user_attributes[:password]
    end

    # Test that password confirmation is set
    it "sets user password_confirmation properly" do
      post :create, :params => { :user => { 
        name: "TestName",
        email: "testemail@test.io",
        password: "password",
        password_confirmation: "password" } 
      }
      expect(assigns(:user).password_confirmation).to eq new_user_attributes[:password_confirmation]
    end

    # Test that the session opens for user
    it "logs the user in after sign up" do
      post :create, :params => { :user => { 
        name: "TestName",
        email: "testemail@test.io",
        password: "password",
        password_confirmation: "password" } 
      }
      expect(session[:user_id]).to eq assigns(:user).id
    end
  end
end