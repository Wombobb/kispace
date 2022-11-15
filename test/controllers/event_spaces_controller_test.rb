require "test_helper"

class EventSpacesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get event_spaces_index_url
    assert_response :success
  end
end
