require "test_helper"

class FichaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ficha_index_url
    assert_response :success
  end

  test "should get new" do
    get ficha_new_url
    assert_response :success
  end

  test "should get edit" do
    get ficha_edit_url
    assert_response :success
  end
end
