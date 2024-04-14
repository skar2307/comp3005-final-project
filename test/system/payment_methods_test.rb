require "application_system_test_case"

class PaymentMethodsTest < ApplicationSystemTestCase
  setup do
    @payment_method = payment_methods(:one)
  end

  test "visiting the index" do
    visit payment_methods_url
    assert_selector "h1", text: "Payment methods"
  end

  test "should create payment method" do
    visit payment_methods_url
    click_on "New payment method"

    fill_in "Card number", with: @payment_method.card_number
    fill_in "Cvv", with: @payment_method.cvv
    fill_in "Expiry date", with: @payment_method.expiry_date
    fill_in "Members", with: @payment_method.members_id
    click_on "Create Payment method"

    assert_text "Payment method was successfully created"
    click_on "Back"
  end

  test "should update Payment method" do
    visit payment_method_url(@payment_method)
    click_on "Edit this payment method", match: :first

    fill_in "Card number", with: @payment_method.card_number
    fill_in "Cvv", with: @payment_method.cvv
    fill_in "Expiry date", with: @payment_method.expiry_date
    fill_in "Members", with: @payment_method.members_id
    click_on "Update Payment method"

    assert_text "Payment method was successfully updated"
    click_on "Back"
  end

  test "should destroy Payment method" do
    visit payment_method_url(@payment_method)
    click_on "Destroy this payment method", match: :first

    assert_text "Payment method was successfully destroyed"
  end
end
