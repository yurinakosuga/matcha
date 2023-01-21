require "test_helper"

class Public::SearchShopDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get public_search_shop_details_search_url
    assert_response :success
  end

  test "should get index" do
    get public_search_shop_details_index_url
    assert_response :success
  end
end
