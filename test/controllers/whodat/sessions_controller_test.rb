require 'test_helper'

module Whodat
  class SessionsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get new" do
      get sessions_new_url
      assert_response :success
    end

    test "should get create" do
      get sessions_create_url
      assert_response :success
    end

    test "should get destroy" do
      get sessions_destroy_url
      assert_response :success
    end

  end
end
