require 'test_helper'

class ExportFilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get export_files_index_url
    assert_response :success
  end

end
