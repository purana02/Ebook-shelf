require "test_helper"

class Admin::SitesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_sites_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_sites_edit_url
    assert_response :success
  end
end
