require 'test_helper'

class AccountPlatformReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get account_platform_reports_index_url
    assert_response :success
  end

  test "should get show" do
    get account_platform_reports_show_url
    assert_response :success
  end

  test "should get new" do
    get account_platform_reports_new_url
    assert_response :success
  end

  test "should get create" do
    get account_platform_reports_create_url
    assert_response :success
  end

  test "should get destroy" do
    get account_platform_reports_destroy_url
    assert_response :success
  end

end
