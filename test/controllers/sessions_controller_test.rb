require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get login_session_url
    assert_response :success
  end

  test "should get logout" do
    get logout_session_url
    assert_response :success
  end

  test "should get redirect" do
    get redirect_session_url
    assert_response :success
  end

  test "should get index" do
    get session_url
    assert_response :success
  end

end
