require 'test_helper'

class Prefix1sControllerTest < ActionController::TestCase
  setup do
    @prefix1 = prefix1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prefix1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prefix1" do
    assert_difference('Prefix1.count') do
      post :create, prefix1: @prefix1.attributes
    end

    assert_redirected_to prefix1_path(assigns(:prefix1))
  end

  test "should show prefix1" do
    get :show, id: @prefix1.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prefix1.to_param
    assert_response :success
  end

  test "should update prefix1" do
    put :update, id: @prefix1.to_param, prefix1: @prefix1.attributes
    assert_redirected_to prefix1_path(assigns(:prefix1))
  end

  test "should destroy prefix1" do
    assert_difference('Prefix1.count', -1) do
      delete :destroy, id: @prefix1.to_param
    end

    assert_redirected_to prefix1s_path
  end
end
