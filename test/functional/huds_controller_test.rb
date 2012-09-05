require 'test_helper'

class HudsControllerTest < ActionController::TestCase
  setup do
    @hud = huds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:huds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hud" do
    assert_difference('Hud.count') do
      post :create, hud: { content: @hud.content, title: @hud.title }
    end

    assert_redirected_to hud_path(assigns(:hud))
  end

  test "should show hud" do
    get :show, id: @hud
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hud
    assert_response :success
  end

  test "should update hud" do
    put :update, id: @hud, hud: { content: @hud.content, title: @hud.title }
    assert_redirected_to hud_path(assigns(:hud))
  end

  test "should destroy hud" do
    assert_difference('Hud.count', -1) do
      delete :destroy, id: @hud
    end

    assert_redirected_to huds_path
  end
end
