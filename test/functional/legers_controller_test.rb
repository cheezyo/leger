require 'test_helper'

class LegersControllerTest < ActionController::TestCase
  setup do
    @leger = legers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leger" do
    assert_difference('Leger.count') do
      post :create, leger: { info: @leger.info, name: @leger.name, position: @leger.position }
    end

    assert_redirected_to leger_path(assigns(:leger))
  end

  test "should show leger" do
    get :show, id: @leger
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leger
    assert_response :success
  end

  test "should update leger" do
    put :update, id: @leger, leger: { info: @leger.info, name: @leger.name, position: @leger.position }
    assert_redirected_to leger_path(assigns(:leger))
  end

  test "should destroy leger" do
    assert_difference('Leger.count', -1) do
      delete :destroy, id: @leger
    end

    assert_redirected_to legers_path
  end
end
