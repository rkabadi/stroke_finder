require 'test_helper'

class StrokesControllerTest < ActionController::TestCase
  setup do
    @stroke = strokes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:strokes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stroke" do
    assert_difference('Stroke.count') do
      post :create, stroke: { grip: @stroke.grip, handedness: @stroke.handedness, link: @stroke.link, shot: @stroke.shot, spin: @stroke.spin }
    end

    assert_redirected_to stroke_path(assigns(:stroke))
  end

  test "should show stroke" do
    get :show, id: @stroke
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stroke
    assert_response :success
  end

  test "should update stroke" do
    patch :update, id: @stroke, stroke: { grip: @stroke.grip, handedness: @stroke.handedness, link: @stroke.link, shot: @stroke.shot, spin: @stroke.spin }
    assert_redirected_to stroke_path(assigns(:stroke))
  end

  test "should destroy stroke" do
    assert_difference('Stroke.count', -1) do
      delete :destroy, id: @stroke
    end

    assert_redirected_to strokes_path
  end
end
