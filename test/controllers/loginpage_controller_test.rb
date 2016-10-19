require 'test_helper'

class LoginpageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get loginpage_index_url
    assert_response :success
  end

end
