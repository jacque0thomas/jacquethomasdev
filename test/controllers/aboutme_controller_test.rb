require "test_helper"

class AboutmeControllerTest < ActionDispatch::IntegrationTest
  test "should get about-me" do
    get aboutme_about-me_url
    assert_response :success
  end
end
