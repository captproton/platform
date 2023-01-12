require "application_system_test_case"

class Backstage::PagesTest < ApplicationSystemTestCase
  setup do
    @backstage_page = backstage_pages(:one)
  end

  test "visiting the index" do
    visit backstage_pages_url
    assert_selector "h1", text: "Pages"
  end

  test "should create page" do
    visit backstage_pages_url
    click_on "New page"

    fill_in "Body", with: @backstage_page.body
    fill_in "Slug", with: @backstage_page.slug
    fill_in "Title", with: @backstage_page.title
    click_on "Create Page"

    assert_text "Page was successfully created"
    click_on "Back"
  end

  test "should update Page" do
    visit backstage_page_url(@backstage_page)
    click_on "Edit this page", match: :first

    fill_in "Body", with: @backstage_page.body
    fill_in "Slug", with: @backstage_page.slug
    fill_in "Title", with: @backstage_page.title
    click_on "Update Page"

    assert_text "Page was successfully updated"
    click_on "Back"
  end

  test "should destroy Page" do
    visit backstage_page_url(@backstage_page)
    click_on "Destroy this page", match: :first

    assert_text "Page was successfully destroyed"
  end
end
