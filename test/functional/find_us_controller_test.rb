require 'test_helper'

class FindUsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
