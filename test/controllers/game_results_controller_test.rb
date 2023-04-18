require "test_helper"

class GameResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get game_results_index_url
    assert_response :success
  end
end
