require 'test_helper'

class Customer::ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get customer_contacts_new_url
    assert_response :success
  end

  test "should get confirm" do
    get customer_contacts_confirm_url
    assert_response :success
  end

  test "should get finish" do
    get customer_contacts_finish_url
    assert_response :success
  end

  test "should get create" do
    get customer_contacts_create_url
    assert_response :success
  end

end
