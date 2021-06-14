require 'test_helper'

class Admin::VisitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_visits_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_visits_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_visits_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_visits_update_url
    assert_response :success
  end

end
