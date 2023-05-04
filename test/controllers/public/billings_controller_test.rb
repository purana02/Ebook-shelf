require "test_helper"

class Public::BillingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_billings_index_url
    assert_response :success
  end

  test "should get new" do
    get public_billings_new_url
    assert_response :success
  end

  test "should get edit" do
    get public_billings_edit_url
    assert_response :success
  end
end
