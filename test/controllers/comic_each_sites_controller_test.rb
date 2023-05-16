require "test_helper"

class ComicEachSitesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get comic_each_sites_index_url
    assert_response :success
  end
end
