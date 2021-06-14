require 'test_helper'

class Customer::VisitsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get customer_visits_new_url
    assert_response :success
  end

  test "should get confirm" do
    get customer_visits_confirm_url
    assert_response :success
  end

  test "should get finish" do
    get customer_visits_finish_url
    assert_response :success
  end

  test "should get create" do
    get customer_visits_create_url
    assert_response :success
  end

end
