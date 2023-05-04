require "test_helper"

class Public::ComicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_comics_index_url
    assert_response :success
  end

  test "should get show" do
    get public_comics_show_url
    assert_response :success
  end

  test "should get new" do
    get public_comics_new_url
    assert_response :success
  end

  test "should get edit" do
    get public_comics_edit_url
    assert_response :success
  end
end
