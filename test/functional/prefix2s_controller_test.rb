require 'test_helper'

class Prefix2sControllerTest < ActionController::TestCase
  setup do
    @prefix2 = prefix2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prefix2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prefix2" do
    assert_difference('Prefix2.count') do
      post :create, prefix2: @prefix2.attributes
    end

    assert_redirected_to prefix2_path(assigns(:prefix2))
  end

  test "should show prefix2" do
    get :show, id: @prefix2.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prefix2.to_param
    assert_response :success
  end

  test "should update prefix2" do
    put :update, id: @prefix2.to_param, prefix2: @prefix2.attributes
    assert_redirected_to prefix2_path(assigns(:prefix2))
  end

  test "should destroy prefix2" do
    assert_difference('Prefix2.count', -1) do
      delete :destroy, id: @prefix2.to_param
    end

    assert_redirected_to prefix2s_path
  end
end
