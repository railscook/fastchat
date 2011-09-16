require 'test_helper'

class OnlineUsersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:online_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create online_user" do
    assert_difference('OnlineUser.count') do
      post :create, :online_user => { }
    end

    assert_redirected_to online_user_path(assigns(:online_user))
  end

  test "should show online_user" do
    get :show, :id => online_users(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => online_users(:one).to_param
    assert_response :success
  end

  test "should update online_user" do
    put :update, :id => online_users(:one).to_param, :online_user => { }
    assert_redirected_to online_user_path(assigns(:online_user))
  end

  test "should destroy online_user" do
    assert_difference('OnlineUser.count', -1) do
      delete :destroy, :id => online_users(:one).to_param
    end

    assert_redirected_to online_users_path
  end
end
