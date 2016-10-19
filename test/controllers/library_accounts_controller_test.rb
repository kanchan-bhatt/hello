require 'test_helper'

class LibraryAccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get library_accounts_index_url
    assert_response :success
  end

end
