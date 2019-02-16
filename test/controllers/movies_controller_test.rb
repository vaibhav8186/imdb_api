require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get app/controllers/api/v1/" do
    get movies_app/controllers/api/v1/_url
    assert_response :success
  end

end
