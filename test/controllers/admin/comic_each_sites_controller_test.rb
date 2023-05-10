require "test_helper"

class Admin::ComicEachSitesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_comic_each_sites_show_url
    assert_response :success
  end
end
