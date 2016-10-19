require 'test_helper'

class CounterandcustomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @counterandcustom = counterandcustoms(:one)
  end

  test "should get index" do
    get counterandcustoms_url
    assert_response :success
  end

  test "should get new" do
    get new_counterandcustom_url
    assert_response :success
  end

  test "should create counterandcustom" do
    assert_difference('Counterandcustom.count') do
      post counterandcustoms_url, params: { counterandcustom: { description: @counterandcustom.description, name: @counterandcustom.name, report_type: @counterandcustom.report_type, year: @counterandcustom.year } }
    end

    assert_redirected_to counterandcustom_url(Counterandcustom.last)
  end

  test "should show counterandcustom" do
    get counterandcustom_url(@counterandcustom)
    assert_response :success
  end

  test "should get edit" do
    get edit_counterandcustom_url(@counterandcustom)
    assert_response :success
  end

  test "should update counterandcustom" do
    patch counterandcustom_url(@counterandcustom), params: { counterandcustom: { description: @counterandcustom.description, name: @counterandcustom.name, report_type: @counterandcustom.report_type, year: @counterandcustom.year } }
    assert_redirected_to counterandcustom_url(@counterandcustom)
  end

  test "should destroy counterandcustom" do
    assert_difference('Counterandcustom.count', -1) do
      delete counterandcustom_url(@counterandcustom)
    end

    assert_redirected_to counterandcustoms_url
  end
end
