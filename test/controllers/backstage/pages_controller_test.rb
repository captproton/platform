require "test_helper"

class Backstage::PagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @backstage_page = backstage_pages(:one)
  end

  test "should get index" do
    get backstage_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_backstage_page_url
    assert_response :success
  end

  test "should create backstage_page" do
    assert_difference("Backstage::Page.count") do
      post backstage_pages_url, params: { backstage_page: { body: @backstage_page.body, slug: @backstage_page.slug, title: @backstage_page.title } }
    end

    assert_redirected_to backstage_page_url(Backstage::Page.last)
  end

  test "should show backstage_page" do
    get backstage_page_url(@backstage_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_backstage_page_url(@backstage_page)
    assert_response :success
  end

  test "should update backstage_page" do
    patch backstage_page_url(@backstage_page), params: { backstage_page: { body: @backstage_page.body, slug: @backstage_page.slug, title: @backstage_page.title } }
    assert_redirected_to backstage_page_url(@backstage_page)
  end

  test "should destroy backstage_page" do
    assert_difference("Backstage::Page.count", -1) do
      delete backstage_page_url(@backstage_page)
    end

    assert_redirected_to backstage_pages_url
  end
end
