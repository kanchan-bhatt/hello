require 'test_helper'

class ImportFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @import_file = import_files(:one)
  end

  test "should get index" do
    get import_files_url
    assert_response :success
  end

  test "should get new" do
    get new_import_file_url
    assert_response :success
  end

  test "should create import_file" do
    assert_difference('ImportFile.count') do
      post import_files_url, params: { import_file: { cost_data_content_type: @import_file.cost_data_content_type, cost_data_file_name: @import_file.cost_data_file_name, cost_data_file_size: @import_file.cost_data_file_size, cost_data_updated_at: @import_file.cost_data_updated_at, name: @import_file.name } }
    end

    assert_redirected_to import_file_url(ImportFile.last)
  end

  test "should show import_file" do
    get import_file_url(@import_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_import_file_url(@import_file)
    assert_response :success
  end

  test "should update import_file" do
    patch import_file_url(@import_file), params: { import_file: { cost_data_content_type: @import_file.cost_data_content_type, cost_data_file_name: @import_file.cost_data_file_name, cost_data_file_size: @import_file.cost_data_file_size, cost_data_updated_at: @import_file.cost_data_updated_at, name: @import_file.name } }
    assert_redirected_to import_file_url(@import_file)
  end

  test "should destroy import_file" do
    assert_difference('ImportFile.count', -1) do
      delete import_file_url(@import_file)
    end

    assert_redirected_to import_files_url
  end
end
