require 'test_helper'

class GripsControllerTest < ActionController::TestCase
  setup do
    @grip = grips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grip" do
    assert_difference('Grip.count') do
      post :create, grip: { name: @grip.name }
    end

    assert_redirected_to grip_path(assigns(:grip))
  end

  test "should show grip" do
    get :show, id: @grip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grip
    assert_response :success
  end

  test "should update grip" do
    patch :update, id: @grip, grip: { name: @grip.name }
    assert_redirected_to grip_path(assigns(:grip))
  end

  test "should destroy grip" do
    assert_difference('Grip.count', -1) do
      delete :destroy, id: @grip
    end

    assert_redirected_to grips_path
  end
end
