# frozen_string_literal: true

require "test_helper"

class Customer::CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get confirm_withdraw" do
    get customer_customers_confirm_withdraw_url
    assert_response :success
  end

  test "should get withdraw" do
    get customer_customers_withdraw_url
    assert_response :success
  end
end
