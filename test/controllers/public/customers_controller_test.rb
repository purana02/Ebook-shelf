require "test_helper"

class Public::CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_customers_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_customers_edit_url
    assert_response :success
  end

  test "should get update" do
    get public_customers_update_url
    assert_response :success
  end

  test "should get confirm_deleted" do
    get public_customers_confirm_deleted_url
    assert_response :success
  end

  test "should get is_deleted" do
    get public_customers_is_deleted_url
    assert_response :success
  end
end
