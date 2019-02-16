require 'test_helper'

class App::Controllers::Api::V1ControllerTest < ActionDispatch::IntegrationTest
  test "should get Movies" do
    get app_controllers_api_v1_Movies_url
    assert_response :success
  end

end
