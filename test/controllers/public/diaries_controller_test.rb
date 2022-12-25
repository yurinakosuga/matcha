require "test_helper"

class Public::DiariesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_diaries_index_url
    assert_response :success
  end

  test "should get edit" do
    get public_diaries_edit_url
    assert_response :success
  end
end
