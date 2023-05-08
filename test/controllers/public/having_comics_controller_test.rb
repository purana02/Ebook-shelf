require "test_helper"

class Public::HavingComicsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_having_comics_new_url
    assert_response :success
  end
end
