require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get decouvrir" do
    get pages_decouvrir_url
    assert_response :success
  end
end
