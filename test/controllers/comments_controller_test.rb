require "test_helper"

class CommentsControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers

  setup do
    @comment = comments(:one)
    @publication = publications(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create comment" do
  #   assert_difference("Comment.count") do
  #     post :create, params: { comment: { content: @comment.content, publication_id: @comment.publication_id, user_id: @comment.user_id } }
  #   end

  #   assert_redirected_to comment_url(Comment.last)
  # end

  # test "should show comment" do
  #   get :show, params: { id: @comment }
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, params: { id: @comment }
  #   assert_response :success
  # end

  # test "should update comment" do
  #   patch :update, params: { id: @comment, comment: { content: @comment.content, publication_id: @comment.publication_id, user_id: @comment.user_id } }
  #   assert_redirected_to comment_url(@comment)
  # end

  # test "should destroy comment" do
  #   assert_difference("Comment.count", -1) do
  #     delete :destroy, params: { id: @comment }
  #   end

  #   assert_redirected_to comments_url
  # end
end
