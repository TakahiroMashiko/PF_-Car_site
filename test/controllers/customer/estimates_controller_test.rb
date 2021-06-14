require 'test_helper'

class Customer::EstimatesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get customer_estimates_new_url
    assert_response :success
  end

  test "should get update" do
    get customer_estimates_update_url
    assert_response :success
  end

  test "should get create" do
    get customer_estimates_create_url
    assert_response :success
  end

end
