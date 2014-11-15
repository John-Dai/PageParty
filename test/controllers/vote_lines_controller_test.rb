require 'test_helper'

class VoteLinesControllerTest < ActionController::TestCase
  setup do
    @vote_line = vote_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vote_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vote_line" do
    assert_difference('VoteLine.count') do
      post :create, vote_line: { code: @vote_line.code, votes: @vote_line.votes }
    end

    assert_redirected_to vote_line_path(assigns(:vote_line))
  end

  test "should show vote_line" do
    get :show, id: @vote_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vote_line
    assert_response :success
  end

  test "should update vote_line" do
    patch :update, id: @vote_line, vote_line: { code: @vote_line.code, votes: @vote_line.votes }
    assert_redirected_to vote_line_path(assigns(:vote_line))
  end

  test "should destroy vote_line" do
    assert_difference('VoteLine.count', -1) do
      delete :destroy, id: @vote_line
    end

    assert_redirected_to vote_lines_path
  end
end
