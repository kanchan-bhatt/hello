require 'test_helper'

class AccountPlatformsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get account_platforms_index_url
    assert_response :success
  end

  test "should get new" do
    get account_platforms_new_url
    assert_response :success
  end

  test "should get show" do
    get account_platforms_show_url
    assert_response :success
  end

  test "should get create" do
    get account_platforms_create_url
    assert_response :success
  end

  test "should get destroy" do
    get account_platforms_destroy_url
    assert_response :success
  end

  test "should get update" do
    get account_platforms_update_url
    assert_response :success
  end

end
