require 'test_helper'

class AppliedLinesControllerTest < ActionController::TestCase
  setup do
    @applied_line = applied_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applied_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applied_line" do
    assert_difference('AppliedLine.count') do
      post :create, applied_line: { code: @applied_line.code }
    end

    assert_redirected_to applied_line_path(assigns(:applied_line))
  end

  test "should show applied_line" do
    get :show, id: @applied_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @applied_line
    assert_response :success
  end

  test "should update applied_line" do
    patch :update, id: @applied_line, applied_line: { code: @applied_line.code }
    assert_redirected_to applied_line_path(assigns(:applied_line))
  end

  test "should destroy applied_line" do
    assert_difference('AppliedLine.count', -1) do
      delete :destroy, id: @applied_line
    end

    assert_redirected_to applied_lines_path
  end
end
