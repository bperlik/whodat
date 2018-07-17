require 'test_helper'

module Whodat
  class UsersControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get new" do
      get users_new_url
      assert_response :success
    end

    test "should get create" do
      get users_create_url
      assert_response :success
    end

    test "should get destroy" do
      get users_destroy_url
      assert_response :success
    end

  end
end
