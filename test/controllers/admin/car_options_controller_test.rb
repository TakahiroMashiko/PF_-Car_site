require 'test_helper'

class Admin::CarOptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_car_options_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_car_options_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_car_options_create_url
    assert_response :success
  end

  test "should get show" do
    get admin_car_options_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_car_options_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_car_options_update_url
    assert_response :success
  end

end
