require "test_helper"

class Backstage::SitesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get backstage_sites_show_url
    assert_response :success
  end

  test "should get index" do
    get backstage_sites_index_url
    assert_response :success
  end
end
