require 'test_helper'

class UploadFilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get upload_files_index_url
    assert_response :success
  end

  test "should get new" do
    get upload_files_new_url
    assert_response :success
  end

  test "should get create" do
    get upload_files_create_url
    assert_response :success
  end

  test "should get destroy" do
    get upload_files_destroy_url
    assert_response :success
  end

end
