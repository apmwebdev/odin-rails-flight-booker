require "test_helper"

class AirportControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get airport_index_url
    assert_response :success
  end

  test "should get show" do
    get airport_show_url
    assert_response :success
  end

  test "should get new" do
    get airport_new_url
    assert_response :success
  end

  test "should get create" do
    get airport_create_url
    assert_response :success
  end

  test "should get edit" do
    get airport_edit_url
    assert_response :success
  end

  test "should get update" do
    get airport_update_url
    assert_response :success
  end

  test "should get destroy" do
    get airport_destroy_url
    assert_response :success
  end
end
