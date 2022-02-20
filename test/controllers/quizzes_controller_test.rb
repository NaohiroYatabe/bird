require "test_helper"

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  test "should get select" do
    get quizzes_select_url
    assert_response :success
  end
end
