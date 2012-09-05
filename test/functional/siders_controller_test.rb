require 'test_helper'

class SidersControllerTest < ActionController::TestCase
  setup do
    @sider = siders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:siders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sider" do
    assert_difference('Sider.count') do
      post :create, sider: { content: @sider.content, title: @sider.title }
    end

    assert_redirected_to sider_path(assigns(:sider))
  end

  test "should show sider" do
    get :show, id: @sider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sider
    assert_response :success
  end

  test "should update sider" do
    put :update, id: @sider, sider: { content: @sider.content, title: @sider.title }
    assert_redirected_to sider_path(assigns(:sider))
  end

  test "should destroy sider" do
    assert_difference('Sider.count', -1) do
      delete :destroy, id: @sider
    end

    assert_redirected_to siders_path
  end
end
