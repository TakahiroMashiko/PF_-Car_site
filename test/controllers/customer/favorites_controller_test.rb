require 'test_helper'

class Customer::FavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get customer_favorites_create_url
    assert_response :success
  end

  test "should get destoroy" do
    get customer_favorites_destoroy_url
    assert_response :success
  end

end
