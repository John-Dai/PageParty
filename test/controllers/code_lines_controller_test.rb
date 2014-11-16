require 'test_helper'

class CodeLinesControllerTest < ActionController::TestCase
  setup do
    @code_line = code_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_line" do
    assert_difference('CodeLine.count') do
      post :create, code_line: { code: @code_line.code }
    end

    assert_redirected_to code_line_path(assigns(:code_line))
  end

  test "should show code_line" do
    get :show, id: @code_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_line
    assert_response :success
  end

  test "should update code_line" do
    patch :update, id: @code_line, code_line: { code: @code_line.code }
    assert_redirected_to code_line_path(assigns(:code_line))
  end

  test "should destroy code_line" do
    assert_difference('CodeLine.count', -1) do
      delete :destroy, id: @code_line
    end

    assert_redirected_to code_lines_path
  end
end
