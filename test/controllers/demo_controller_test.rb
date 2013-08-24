require 'test_helper'

class DemoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get mail" do
    get :mail
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

end
