require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get trash_a_friend" do
    get :trash_a_friend
    assert_response :success
  end

end
