require 'test_helper'

class ErrorControllerTest < ActionController::TestCase
  test "should get handle404" do
    get :handle404
    assert_response :success
  end

end
