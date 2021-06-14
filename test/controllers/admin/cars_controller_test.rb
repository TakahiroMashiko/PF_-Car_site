require 'test_helper'

class Admin::CarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_cars_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_cars_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_cars_create_url
    assert_response :success
  end

  test "should get show" do
    get admin_cars_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_cars_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_cars_update_url
    assert_response :success
  end

end
