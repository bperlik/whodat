require 'rails_helper'

def main_app
  Rails.application.class.routes.url_helpers
end

main_app.root_path

RSpec.describe Whodat::SessionsController, type: :controller do
  routes { Whodat::Engine.routes } 
    
  # let(:my_user) { User.create!(name: "Testname", email: "test@test.io", password: "password", password_confirmation: "password") }
  let(:my_user) { create(:user) } 
    
  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST create" do
    it "returns http success" do
      post :create, :params => { :session => { email: my_user.email } } 
      expect(response).to have_http_status(:success)
    end

    it "initializes a session" do
      post :create, params: { session: { email: my_user.email } }
      expect(session[:user_id]).to eq assigns(my_user.id)
    end

    it "does not add a user id to session due to missing password" do
      post :create, params: { session: { email: my_user.email } } 
      expect(session[:user_id]).to be_nil
    end

    it "flashes #error with bad email address" do
      post :create, :params => { :session => { email: "not a good email address"  } } 
      expect(flash.now[:notice]).to be_present
    end

    it "renders #new with bad email address" do
      post :create, :params => { :session => { email: "not a good email address" } }
      expect(response).to render_template :new
    end

    it "redirects to the root view" do
      post :create, :params => { :session => { name: my_user.name, email: my_user.email, password: my_user.password } }
      expect(response).to redirect_to(main_app.root_path)
    end
  end

  describe "DELETE sessions/id" do
    it "render the #welcome view" do
      delete :destroy, :params => { id: (my_user.id) }
      expect(response).to redirect_to (main_app.root_path)
    end

    it "deletes the user's session" do
      delete :destroy, :params => { id: (my_user.id) }
      expect(assigns(:session)).to be_nil
    end

    it "flashes #notice" do
      delete :destroy, :params => { id: (my_user.id) }
      expect(flash[:notice]).to be_present
    end
  end
end

