require "test_helper"

class BlurbControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blurb_index_url
    assert_response :success
  end
end
