require 'test_helper'

class Customer::DealersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customer_dealers_index_url
    assert_response :success
  end

  test "should get show" do
    get customer_dealers_show_url
    assert_response :success
  end

end
