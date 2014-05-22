require 'test_helper'

class EventPostsControllerTest < ActionController::TestCase
  setup do
    @event_post = event_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_post" do
    assert_difference('EventPost.count') do
      post :create, event_post: { msg: @event_post.msg, title: @event_post.title }
    end

    assert_redirected_to event_post_path(assigns(:event_post))
  end

  test "should show event_post" do
    get :show, id: @event_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_post
    assert_response :success
  end

  test "should update event_post" do
    patch :update, id: @event_post, event_post: { msg: @event_post.msg, title: @event_post.title }
    assert_redirected_to event_post_path(assigns(:event_post))
  end

  test "should destroy event_post" do
    assert_difference('EventPost.count', -1) do
      delete :destroy, id: @event_post
    end

    assert_redirected_to event_posts_path
  end
end
