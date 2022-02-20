require "test_helper"

class GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get select" do
    get genres_select_url
    assert_response :success
  end
end
