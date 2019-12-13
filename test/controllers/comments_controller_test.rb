require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @echo = echos(:one)
    @comment = comments(:one)
  end

  test "should get index" do
    get comments_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_url
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post comments_url, params: { comment: { echo_id: @echo.id, body: @comment.body, user_id: @comment.user_id } }
    end

    assert_redirected_to comment_url(Comment.last)
  end

  test "should show comment" do
    get comment_url(@comment)
    assert_response :success
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete comment_url(@comment)
    end

    assert_redirected_to root_path
  end
end
