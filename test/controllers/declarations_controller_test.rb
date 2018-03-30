require 'test_helper'

class DeclarationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get declarations_index_url
    assert_response :success
  end

  test "should get show" do
    get declarations_show_url
    assert_response :success
  end

  test "should get new" do
    get declarations_new_url
    assert_response :success
  end

  test "should get create" do
    get declarations_create_url
    assert_response :success
  end

  test "should get update" do
    get declarations_update_url
    assert_response :success
  end

  test "should get edit" do
    get declarations_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get declarations_destroy_url
    assert_response :success
  end

end
