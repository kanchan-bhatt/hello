require 'test_helper'

class PlatformReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get platform_reports_index_url
    assert_response :success
  end

  test "should get new" do
    get platform_reports_new_url
    assert_response :success
  end

  test "should get show" do
    get platform_reports_show_url
    assert_response :success
  end

  test "should get create" do
    get platform_reports_create_url
    assert_response :success
  end

  test "should get destroy" do
    get platform_reports_destroy_url
    assert_response :success
  end

  test "should get update" do
    get platform_reports_update_url
    assert_response :success
  end

end
