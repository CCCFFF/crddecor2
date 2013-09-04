require 'test_helper'

class SpacePicturesControllerTest < ActionController::TestCase
  setup do
    @space_picture = space_pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:space_pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create space_picture" do
    assert_difference('SpacePicture.count') do
      post :create, space_picture: { name: @space_picture.name, source: @space_picture.source, space_id: @space_picture.space_id }
    end

    assert_redirected_to space_picture_path(assigns(:space_picture))
  end

  test "should show space_picture" do
    get :show, id: @space_picture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @space_picture
    assert_response :success
  end

  test "should update space_picture" do
    patch :update, id: @space_picture, space_picture: { name: @space_picture.name, source: @space_picture.source, space_id: @space_picture.space_id }
    assert_redirected_to space_picture_path(assigns(:space_picture))
  end

  test "should destroy space_picture" do
    assert_difference('SpacePicture.count', -1) do
      delete :destroy, id: @space_picture
    end

    assert_redirected_to space_pictures_path
  end
end
