require "test_helper"

class PublicationsControllerTest < ActionController::TestCase
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

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publication" do
    assert_difference("Publication.count") do
      post :create, params: { publication: { description: @publication.description, image: @publication.image, title: @publication.title } }
    end

    assert_redirected_to publication_url(Publication.last)
  end

  test "should show publication" do
    get :show, params: { id: @publication }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @publication }
    assert_response :success
  end

  test "should update publication" do
    patch :update, params: { id: @publication, publication: { description: @publication.description, image: @publication.image, title: @publication.title, user_id: @publication.user_id } }
    assert_redirected_to publication_url(@publication)
  end

  test "should destroy publication" do
    assert_difference("Publication.count", -1) do
      delete :destroy, params: { id: @publication }
    end

    assert_redirected_to publications_url
  end
end
