require 'test_helper'

class ActorsControllerTest < ActionDispatch::IntegrationTest
  test "should get app/controllers/api/v1/" do
    get actors_app/controllers/api/v1/_url
    assert_response :success
  end

end
