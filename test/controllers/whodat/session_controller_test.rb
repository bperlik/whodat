require 'test_helper'

module Whodat
  class SessionControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get new" do
      get session_new_url
      assert_response :success
    end

    test "should get create" do
      get session_create_url
      assert_response :success
    end

    test "should get destroy" do
      get session_destroy_url
      assert_response :success
    end

  end
end
