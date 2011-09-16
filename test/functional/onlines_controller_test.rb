require 'test_helper'

class OnlinesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:onlines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create online" do
    assert_difference('Online.count') do
      post :create, :online => { }
    end

    assert_redirected_to online_path(assigns(:online))
  end

  test "should show online" do
    get :show, :id => onlines(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => onlines(:one).to_param
    assert_response :success
  end

  test "should update online" do
    put :update, :id => onlines(:one).to_param, :online => { }
    assert_redirected_to online_path(assigns(:online))
  end

  test "should destroy online" do
    assert_difference('Online.count', -1) do
      delete :destroy, :id => onlines(:one).to_param
    end

    assert_redirected_to onlines_path
  end
end
