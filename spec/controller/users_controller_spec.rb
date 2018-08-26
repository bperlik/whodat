require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  
    let(:current_
      user_attributes) do
      {
          name: "Testuser",
          email: "test@test.io",
          password: "password",
          password_confirmation: "password"
      }
    end

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
  end