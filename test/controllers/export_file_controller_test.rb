require 'test_helper'

class ExportFileControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get export_file_index_url
    assert_response :success
  end

  test "should get show" do
    get export_file_show_url
    assert_response :success
  end

end
