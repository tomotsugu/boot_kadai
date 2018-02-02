require 'test_helper'

class BsBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bs_blog = bs_blogs(:one)
  end

  test "should get index" do
    get bs_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_bs_blog_url
    assert_response :success
  end

  test "should create bs_blog" do
    assert_difference('BsBlog.count') do
      post bs_blogs_url, params: { bs_blog: { content: @bs_blog.content, email: @bs_blog.email, title: @bs_blog.title } }
    end

    assert_redirected_to bs_blog_url(BsBlog.last)
  end

  test "should show bs_blog" do
    get bs_blog_url(@bs_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_bs_blog_url(@bs_blog)
    assert_response :success
  end

  test "should update bs_blog" do
    patch bs_blog_url(@bs_blog), params: { bs_blog: { content: @bs_blog.content, email: @bs_blog.email, title: @bs_blog.title } }
    assert_redirected_to bs_blog_url(@bs_blog)
  end

  test "should destroy bs_blog" do
    assert_difference('BsBlog.count', -1) do
      delete bs_blog_url(@bs_blog)
    end

    assert_redirected_to bs_blogs_url
  end
end
