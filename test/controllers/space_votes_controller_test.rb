require 'test_helper'

class SpaceVotesControllerTest < ActionController::TestCase
  setup do
    @space_vote = space_votes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:space_votes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create space_vote" do
    assert_difference('SpaceVote.count') do
      post :create, space_vote: { space_id: @space_vote.space_id, user_id: @space_vote.user_id }
    end

    assert_redirected_to space_vote_path(assigns(:space_vote))
  end

  test "should show space_vote" do
    get :show, id: @space_vote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @space_vote
    assert_response :success
  end

  test "should update space_vote" do
    patch :update, id: @space_vote, space_vote: { space_id: @space_vote.space_id, user_id: @space_vote.user_id }
    assert_redirected_to space_vote_path(assigns(:space_vote))
  end

  test "should destroy space_vote" do
    assert_difference('SpaceVote.count', -1) do
      delete :destroy, id: @space_vote
    end

    assert_redirected_to space_votes_path
  end
end
